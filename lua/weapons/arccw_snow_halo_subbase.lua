AddCSLuaFile()

SWEP.PrintName = "ArcCW Halo Sub-Base"
SWEP.Base = "arccw_base"
SWEP.Spawnable = false
SWEP.AutoSpawnable = nil
SWEP.Category = "ArcCW - Firearms"
SWEP.AdminOnly = false
SWEP.ArcCW_Halo         = true
SWEP.ShouldReloadWhenEmpty = false
SWEP.AmmoRefreshVisualTime = 0 -- This is a negative value intrinsically. Do not make negative here. (It makes the clip refresh sooner without allowing the user to fire sooner.)
-- SWEP.CrosshairMat = "snowysnowtime/reticles/uc/ret_pr"
-- SWEP.SizeX = 127 -- Microadjustments for different crosshair sizes/types.
-- SWEP.SizeY = 127
-- SWEP.FixX = 62
-- SWEP.FixY = 61


DEFINE_BASECLASS("arccw_base")
-- something in here is bound to break in a future update, but i really wanted this shit.

SWEP.Hook_PostFireBullets = function(wep)
    if wep:Clip1() <= 0 && wep.ShouldReloadWhenEmpty == true then
        wep:SetNextPrimaryFire(0)
        wep:Reload()
    end
end

local size = 0
local clump_inner = Material("arccw/hud/clump_inner.png", "mips smooth")
local clump_outer = Material("arccw/hud/clump_outer.png", "mips smooth")
local aimtr_result = {}
local aimtr = {}
local square_mat = Material("color")

function SWEP:ShouldDrawCrosshair()
    if GetConVar("arccw_override_crosshair_off"):GetBool() then return false end
    if !GetConVar("arccw_crosshair"):GetBool() then return false end
    local asight = self:GetActiveSights()

    if !self:GetOwner():ShouldDrawLocalPlayer()
            and self:GetState() == ArcCW.STATE_SIGHTS and !asight.CrosshairInSights then
        return false
    end

    if self:GetCurrentFiremode().Mode == 0 then return false end
    if self:GetBuff_Hook("Hook_ShouldNotFire") then return false end
    if self:GetNWState() == ArcCW.STATE_CUSTOMIZE then return false end
    if self:GetNWState() == ArcCW.STATE_DISABLE then return false end
    return true
end

local cr_main = Color( 0, 255, 0 )
local cr_shad = Color( 0, 0, 0, 127 )

local gaA = 0
local gaD = 0

function SWEP:GetFOVAcc()
    cam.Start3D()
        local lool = ( EyePos() + ( EyeAngles():Forward() ) + ( (ArcCW.MOAToAcc * self:GetBuff("AccuracyMOA")) * EyeAngles():Up() ) ):ToScreen()
        local lool2 = ( EyePos() + ( EyeAngles():Forward() ) + ( (self:GetDispersion() * ArcCW.MOAToAcc / 10) * EyeAngles():Up() ) ):ToScreen()
    cam.End3D()

    local gau = 0
    gau = ( (ScrH()/2) - lool.y )
    gaA = math.Approach(gaA, gau, (ScrH()/2)*FrameTime())
    gau = 0
    gau = ( (ScrH()/2) - lool2.y )
    gaD = math.Approach(gaD, gau, (ScrH()/2)*FrameTime())

    return gaA, gaD
end

function SWEP:DoDrawCrosshair(x, y)
    local ply = LocalPlayer()
    local pos = ply:EyePos()
    local ang = ply:EyeAngles() - self:GetOurViewPunchAngles() + self:GetFreeAimOffset()

    if self:GetBuff_Hook("Hook_PreDrawCrosshair") then return end

    local static = GetConVar("arccw_crosshair_static"):GetBool()

    local prong_dot = GetConVar("arccw_crosshair_dot"):GetBool()
    local prong_top = GetConVar("arccw_crosshair_prong_top"):GetBool()
    local prong_left = GetConVar("arccw_crosshair_prong_left"):GetBool()
    local prong_right = GetConVar("arccw_crosshair_prong_right"):GetBool()
    local prong_down = GetConVar("arccw_crosshair_prong_bottom"):GetBool()

    local prong_len = GetConVar("arccw_crosshair_length"):GetFloat()
    local prong_wid = GetConVar("arccw_crosshair_thickness"):GetFloat()
    local prong_out = GetConVar("arccw_crosshair_outline"):GetInt()
    local prong_tilt = GetConVar("arccw_crosshair_tilt"):GetBool()

    local clr = Color(GetConVar("arccw_crosshair_clr_r"):GetInt(),
            GetConVar("arccw_crosshair_clr_g"):GetInt(),
            GetConVar("arccw_crosshair_clr_b"):GetInt())
    if GetConVar("arccw_ttt_rolecrosshair") and GetConVar("arccw_ttt_rolecrosshair"):GetBool() then
        if GetRoundState() == ROUND_PREP or GetRoundState() == ROUND_POST then
            clr = Color(255, 255, 255)
        elseif ply.GetRoleColor and ply:GetRoleColor() then
            clr = ply:GetRoleColor() -- TTT2 feature
        elseif ply:IsActiveTraitor() then
            clr = Color(255, 50, 50)
        elseif ply:IsActiveDetective() then
            clr = Color(50, 50, 255)
        else
            clr = Color(50, 255, 50)
        end
    end
    if GetConVar("arccw_crosshair_aa"):GetBool() and ply.ArcCW_AATarget != nil and GetConVar("arccw_aimassist"):GetBool() and GetConVar("arccw_aimassist_cl"):GetBool() then
            -- whooie
        clr = Color(255, 0, 0)
    end
    clr.a = GetConVar("arccw_crosshair_clr_a"):GetInt()

    local outlineClr = Color(GetConVar("arccw_crosshair_outline_r"):GetInt(),
            GetConVar("arccw_crosshair_outline_g"):GetInt(),
            GetConVar("arccw_crosshair_outline_b"):GetInt(),
            GetConVar("arccw_crosshair_outline_a"):GetInt())

    local gA, gD = self:GetFOVAcc()
    local gap = (static and 8 or gD) * GetConVar("arccw_crosshair_gap"):GetFloat()

    gap = gap + ( ScreenScale(8) * math.Clamp(self.RecoilAmount, 0, 1) )

    local prong = ScreenScale(prong_len)
    local p_w = ScreenScale(prong_wid)
    local p_w2 = p_w + prong_out

    local sp
    if self:GetOwner():ShouldDrawLocalPlayer() then
        local tr = util.GetPlayerTrace(self:GetOwner())
        local trace = util.TraceLine( tr )

        cam.Start3D()
        local coords = trace.HitPos:ToScreen()
        coords.x = math.Round(coords.x)
        coords.y = math.Round(coords.y)
        cam.End3D()
        sp = { visible = true, x = coords.x, y = coords.y }
    end

    cam.Start3D()
    sp = (pos + (ang:Forward() * 3200)):ToScreen()
    cam.End3D()

    if GetConVar("arccw_crosshair_trueaim"):GetBool() then
        aimtr.start = self:GetShootSrc()
    else
        aimtr.start = pos
    end

    aimtr.endpos = aimtr.start + ((ply:EyeAngles() + self:GetFreeAimOffset()):Forward() * 100000)
    aimtr.filter = {ply}
    aimtr.output = aimtr_result

    table.Add(aimtr.filter, ArcCW:GetVehicleFilter(ply) or {})

    util.TraceLine(aimtr)

    cam.Start3D()
    local w2s = aimtr_result.HitPos:ToScreen()
    w2s.x = math.Round(w2s.x)
    w2s.y = math.Round(w2s.y)
    cam.End3D()

    sp.x = w2s.x sp.y = w2s.y
    x, y = sp.x, sp.y

    local st = self:GetSightTime() / 2

    if self:ShouldDrawCrosshair() then
        self.CrosshairDelta = math.Approach(self.CrosshairDelta or 0, 1, FrameTime() * 1 / st)
    else
        self.CrosshairDelta = math.Approach(self.CrosshairDelta or 0, 0, FrameTime() * 1 / st)
    end

    if GetConVar("arccw_crosshair_equip"):GetBool() and (self:GetBuff("ShootEntity", true) or self.PrimaryBash) then
        prong = ScreenScale(prong_wid)
        p_w = ScreenScale(prong_wid)
        p_w2 = p_w + prong_out
    end
    if prong_dot && self.Precise == true && !self:GetReloading() then
        surface.SetDrawColor(outlineClr.r, outlineClr.g, outlineClr.b, outlineClr.a * self.CrosshairDelta)
        surface.DrawRect(x - p_w2 / 2, y - p_w2 / 2, p_w2, p_w2)

        surface.SetDrawColor(clr.r, clr.g, clr.b, clr.a * self.CrosshairDelta)
        surface.DrawRect(x - p_w / 2, y - p_w / 2, p_w, p_w)
    end
	
	-- Main Crosshair Shit
	surface.SetTexture(surface.GetTextureID(self.CrosshairMat))
	surface.SetDrawColor(clr.r, clr.g, clr.b, clr.a * self.CrosshairDelta)
	surface.DrawTexturedRect(x - p_w / 2 - self.FixX, y - p_w / 2 - self.FixY, self.SizeX, self.SizeY)
	
	-- surface.SetTexture(surface.GetTextureID(self.CrosshairMat))
	-- surface.SetDrawColor(outlineClr.r, outlineClr.g, outlineClr.b, outlineClr.a * self.CrosshairDelta * self.CrosshairDelta)
	-- surface.DrawTexturedRect(x - p_w / 2 - self.FixOutlineX, y - p_w / 2 - self.FixOutlineY, self.SizeOutlineX, self.SizeOutlineY)


    size = math.Approach(size, gap, FrameTime() * 32 * gap)
    gap = size
    if !static then gap = gap * self.CrosshairDelta end
    gap = math.max(4, gap)

    local num = self:GetBuff("Num")
    if GetConVar("arccw_crosshair_shotgun"):GetBool() and num > 1 then
        prong = ScreenScale(prong_wid)
        p_w = ScreenScale(prong_len)
        p_w2 = p_w + prong_out
    end

    local prong2 = prong + prong_out

    self:GetBuff_Hook("Hook_PostDrawCrosshair", w2s)

    return true
end

function SWEP:MeleeAttack(melee2)
    local reach = 32 + self:GetBuff_Add("Add_MeleeRange") + self.MeleeRange
    local dmg = self:GetBuff_Override("Override_MeleeDamage", self.MeleeDamage) or 20

    if melee2 then
        reach = 32 + self:GetBuff_Add("Add_MeleeRange") + self.Melee2Range
        dmg = self:GetBuff_Override("Override_MeleeDamage", self.Melee2Damage) or 20
    end

    dmg = dmg * self:GetBuff_Mult("Mult_MeleeDamage")

    self:GetOwner():LagCompensation(true)

    local filter = {self:GetOwner()}

    table.Add(filter, self.Shields)

    local tr = util.TraceLine({
        start = self:GetOwner():GetShootPos(),
        endpos = self:GetOwner():GetShootPos() + self:GetOwner():GetAimVector() * reach,
        filter = filter,
        mask = MASK_SHOT_HULL
    })

    if (!IsValid(tr.Entity)) then
        tr = util.TraceHull({
            start = self:GetOwner():GetShootPos(),
            endpos = self:GetOwner():GetShootPos() + self:GetOwner():GetAimVector() * reach,
            filter = filter,
            mins = Vector(-8, -8, -4),
            maxs = Vector(8, 8, 4),
            mask = MASK_SHOT_HULL
        })
    end

    -- Backstab damage if applicable
    local backstab = tr.Hit and self:CanBackstab(melee2, tr.Entity)
    if backstab then
        if melee2 then
            local bs_dmg = self:GetBuff_Override("Override_Melee2DamageBackstab", self.Melee2DamageBackstab)
            if bs_dmg then
                dmg = bs_dmg * self:GetBuff_Mult("Mult_MeleeDamage")
            else
                dmg = dmg * self:GetBuff("BackstabMultiplier") * self:GetBuff_Mult("Mult_MeleeDamage")
            end
        else
            local bs_dmg = self:GetBuff_Override("Override_MeleeDamageBackstab", self.MeleeDamageBackstab)
            if bs_dmg then
                dmg = bs_dmg * self:GetBuff_Mult("Mult_MeleeDamage")
            else
                dmg = dmg * self:GetBuff("BackstabMultiplier") * self:GetBuff_Mult("Mult_MeleeDamage")
            end
        end
    end

    -- We need the second part for single player because SWEP:Think is ran shared in SP
    if !(game.SinglePlayer() and CLIENT) then
        if tr.Hit then
            if tr.Entity:IsNPC() or tr.Entity:IsNextBot() or tr.Entity:IsPlayer() then
                self:MyEmitSound(self.MeleeHitNPCSound, 75, 100, 1, CHAN_USER_BASE + 2)
                self:MyEmitSound(self.WeaponHitSound, 75, 100, 1, CHAN_USER_BASE + 2)
            else
                self:MyEmitSound(self.MeleeHitSound, 75, 100, 1, CHAN_USER_BASE + 2)
				self:MyEmitSound(self.WeaponHitSound, 75, 100, 1, CHAN_USER_BASE + 2)
            end

            if tr.MatType == MAT_FLESH or tr.MatType == MAT_ALIENFLESH or tr.MatType == MAT_ANTLION or tr.MatType == MAT_BLOODYFLESH then
                local fx = EffectData()
                fx:SetOrigin(tr.HitPos)

                util.Effect("BloodImpact", fx)
            end
        else
            self:MyEmitSound(self.MeleeMissSound, 75, 100, 1, CHAN_USER_BASE + 3)
        end
    end

    if SERVER and IsValid(tr.Entity) and (tr.Entity:IsNPC() or tr.Entity:IsPlayer() or tr.Entity:Health() > 0) then
        local dmginfo = DamageInfo()

        local attacker = self:GetOwner()
        if !IsValid(attacker) then attacker = self end
        dmginfo:SetAttacker(attacker)

        local relspeed = (tr.Entity:GetVelocity() - self:GetOwner():GetAbsVelocity()):Length()

        relspeed = relspeed / 225

        relspeed = math.Clamp(relspeed, 1, 1.5)

        dmginfo:SetInflictor(self)
        dmginfo:SetDamage(dmg * relspeed)
        dmginfo:SetDamageType(self:GetBuff_Override("Override_MeleeDamageType") or self.MeleeDamageType or DMG_CLUB)
		
		if backstab then
			dmginfo:SetDamageForce(self:GetOwner():GetRight() * -4912 + self:GetOwner():GetForward() * 32000)
		else
			dmginfo:SetDamageForce(self:GetOwner():GetRight() * -4912 + self:GetOwner():GetForward() * 9884)
		end

        SuppressHostEvents(NULL)
        tr.Entity:TakeDamageInfo(dmginfo)
        SuppressHostEvents(self:GetOwner())

        if tr.Entity:GetClass() == "func_breakable_surf" then
            tr.Entity:Fire("Shatter", "0.5 0.5 256")
        end

    end

    if SERVER and IsValid(tr.Entity) then
        local phys = tr.Entity:GetPhysicsObject()
        if IsValid(phys) then
            phys:ApplyForceOffset(self:GetOwner():GetAimVector() * 80 * phys:GetMass(), tr.HitPos)
        end
    end

    self:GetBuff_Hook("Hook_PostBash", {tr = tr, dmg = dmg})

    self:GetOwner():LagCompensation(false)
end

function SWEP:CanBackstab(melee2, ent)
    if !self:GetBuff_Override("Override_Backstab", self.Backstab) then return false end
    local reach = 32 + self:GetBuff_Add("Add_MeleeRange") + (melee2 and self.Melee2Range or self.MeleeRange)

    if (!IsValid(ent)) then
        local tr = util.TraceLine({
            start = self:GetOwner():GetShootPos(),
            endpos = self:GetOwner():GetShootPos() + self:GetOwner():GetAimVector() * reach,
            filter = {self:GetOwner()},
            mask = MASK_SHOT_HULL
        })
        if tr.Entity:IsPlayer() or tr.Entity:IsNPC() or tr.Entity:IsNextBot() then
            ent = tr.Entity
        end
    end

    if (!IsValid(ent)) then
        local tr = util.TraceHull({
            start = self:GetOwner():GetShootPos(),
            endpos = self:GetOwner():GetShootPos() + self:GetOwner():GetAimVector() * reach,
            filter = {self:GetOwner()},
            mins = Vector(-16, -16, -8),
            maxs = Vector(16, 16, 8),
            mask = MASK_SHOT_HULL
        })
        if tr.Entity:IsPlayer() or tr.Entity:IsNPC() or tr.Entity:IsNextBot() then
            ent = tr.Entity
        end
    end

    if IsValid(ent) then
        local angle = math.NormalizeAngle(self:GetOwner():GetAngles().y - ent:GetAngles().y)
        return angle <= 45 and angle >= -45
    end

    return false
end

function SWEP:Reload()
    if IsValid(self:GetHolster_Entity()) then return end
    if self:GetHolster_Time() > 0 then return end
	
	local AmmoRefreshVisualTime = self.AmmoRefreshVisualTime

    if self:GetOwner():IsNPC() then
        return
    end

    if self:GetState() == ArcCW.STATE_CUSTOMIZE then
        return
    end

    -- Switch to UBGL
    if self:GetBuff_Override("UBGL") and self:GetOwner():KeyDown(IN_USE) then
        if self:GetInUBGL() then
            --net.Start("arccw_ubgl")
            --net.WriteBool(false)
            --net.SendToServer()

            self:DeselectUBGL()
        else
            --net.Start("arccw_ubgl")
            --net.WriteBool(true)
            --net.SendToServer()

            self:SelectUBGL()
        end

        return
    end

    if self:GetInUBGL() then
        if self:GetNextSecondaryFire() > CurTime() then return end
            self:ReloadUBGL()
        return
    end

    if self:GetNextPrimaryFire() >= CurTime() then return end
    -- if !game.SinglePlayer() and !IsFirstTimePredicted() then return end


    if self.Throwing then return end
    if self.PrimaryBash then return end

    -- with the lite 3D HUD, you may want to check your ammo without reloading
    local Lite3DHUD = self:GetOwner():GetInfo("arccw_hud_3dfun") == "1"
    if self:GetOwner():KeyDown(IN_WALK) and Lite3DHUD then
        return
    end

    if self:GetMalfunctionJam() then
        local r = self:MalfunctionClear()
        if r then return end
    end

    if !self:GetMalfunctionJam() and self:Ammo1() <= 0 and !self:HasInfiniteAmmo() then return end

    if self:HasBottomlessClip() then return end

    if self:GetBuff_Hook("Hook_PreReload") then return end

    -- if we must dump our clip when reloading, our reserve ammo should be more than our clip
    local dumpclip = self:GetBuff_Hook("Hook_ReloadDumpClip")
    if dumpclip and !self:HasInfiniteAmmo() and self:Clip1() >= self:Ammo1() then
        return
    end

    self.LastClip1 = self:Clip1()

    local reserve = self:Ammo1()

    reserve = reserve + self:Clip1()
    if self:HasInfiniteAmmo() then reserve = self:GetCapacity() + self:Clip1() end

    local clip = self:GetCapacity()

    local chamber = math.Clamp(self:Clip1(), 0, self:GetChamberSize())
    if self:GetNeedCycle() then chamber = 0 end

    local load = math.Clamp(clip + chamber, 0, reserve)

    if !self:GetMalfunctionJam() and load <= self:Clip1() then return end

    self:SetBurstCount(0)

    local shouldshotgunreload = self:GetBuff_Override("Override_ShotgunReload")
    local shouldhybridreload = self:GetBuff_Override("Override_HybridReload")

    if shouldshotgunreload == nil then shouldshotgunreload = self.ShotgunReload end
    if shouldhybridreload == nil then shouldhybridreload = self.HybridReload end

    if shouldhybridreload then
        shouldshotgunreload = self:Clip1() != 0
    end

    if shouldshotgunreload and self:GetShotgunReloading() > 0 then return end

    local mult = self:GetBuff_Mult("Mult_ReloadTime")

    if shouldshotgunreload then
        local anim = "sgreload_start"
        local insertcount = 0

        local empty = self:Clip1() == 0 --or self:GetNeedCycle()

        if self.Animations.sgreload_start_empty and empty then
            anim = "sgreload_start_empty"
            empty = false
            if (self.Animations.sgreload_start_empty or {}).ForceEmpty == true then
                empty = true
            end

            insertcount = (self.Animations.sgreload_start_empty or {}).RestoreAmmo or 1
        else
            insertcount = (self.Animations.sgreload_start or {}).RestoreAmmo or 0
        end

        anim = self:GetBuff_Hook("Hook_SelectReloadAnimation", anim) or anim

        local time = self:GetAnimKeyTime(anim)
        local time2 = self:GetAnimKeyTime(anim, true)

        if time2 >= time then
            time2 = 0
        end

        if insertcount > 0 then
            self:SetMagUpCount(insertcount)
            self:SetMagUpIn(CurTime() + time2 * mult)
        end
        self:PlayAnimation(anim, mult, true, 0, true, nil, true)

        self:SetReloading(CurTime() + time * mult)

        self:SetShotgunReloading(empty and 4 or 2)
    else
        local anim = self:SelectReloadAnimation()

        if !self.Animations[anim] then print("Invalid animation \"" .. anim .. "\"") return end

        self:PlayAnimation(anim, mult, true, 0, false, nil, true)

        local reloadtime = self:GetAnimKeyTime(anim, true) * mult
        local reloadtime2 = self:GetAnimKeyTime(anim, false) * mult

        self:SetNextPrimaryFire(CurTime() + reloadtime2)
        self:SetReloading(CurTime() + reloadtime2)

        self:SetMagUpCount(0)
        self:SetMagUpIn(CurTime() + reloadtime - AmmoRefreshVisualTime)
    end

    self:SetClipInfo(load)
    if game.SinglePlayer() then
        self:CallOnClient("SetClipInfo", tostring(load))
    end

    for i, k in pairs(self.Attachments) do
        if !k.Installed then continue end
        local atttbl = ArcCW.AttachmentTable[k.Installed]

        if atttbl.DamageOnReload then
            self:DamageAttachment(i, atttbl.DamageOnReload)
        end
    end

    if !self.ReloadInSights then
        self:ExitSights()
        self.Sighted = false
    end

    self:GetBuff_Hook("Hook_PostReload")
end

-- JANK HILL
-- This is only for the needler but IDC
if CLIENT then
    ArcCW.LastWeapon = nil
end

local vec1 = Vector(1, 1, 1)
local vec0 = vec1 * 0
local ang0 = Angle(0, 0, 0)

local lastUBGL = 0
function SWEP:Think()
    if IsValid(self:GetOwner()) and self:GetClass() == "arccw_base" then
        self:Remove()
        return
    end

    local owner = self:GetOwner()

    if !IsValid(owner) or owner:IsNPC() then return end

    if self:GetState() == ArcCW.STATE_DISABLE and !self:GetPriorityAnim() then
        self:SetState(ArcCW.STATE_IDLE)
    end

    for i, v in ipairs(self.EventTable) do
        for ed, bz in pairs(v) do
            if ed <= CurTime() then
                if bz.AnimKey and (bz.AnimKey != self.LastAnimKey or bz.StartTime != self.LastAnimStartTime) then
                    continue
                end
                self:PlayEvent(bz)
                self.EventTable[i][ed] = nil
                --print(CurTime(), "Event completed at " .. i, ed)
                if table.IsEmpty(v) and i != 1 then self.EventTable[i] = nil --[[print(CurTime(), "No more events at " .. i .. ", killing")]] end
            end
        end
    end

    if CLIENT and (!game.SinglePlayer() and IsFirstTimePredicted() or true)
            and self:GetOwner() == LocalPlayer() and ArcCW.InvHUD
            and !ArcCW.Inv_Hidden and ArcCW.Inv_Fade == 0 then
        ArcCW.InvHUD:Remove()
        ArcCW.Inv_Fade = 0.01
    end

    local vm = owner:GetViewModel()

    self.BurstCount = self:GetBurstCount()

    local sg = self:GetShotgunReloading()
    if (sg == 2 or sg == 4) and owner:KeyPressed(IN_ATTACK) then
        self:SetShotgunReloading(sg + 1)
    elseif (sg >= 2) and self:GetReloadingREAL() <= CurTime() then
        self:ReloadInsert((sg >= 4) and true or false)
    end

    self:InBipod()

    if self:GetNeedCycle() and !self.Throwing and !self:GetReloading() and self:GetWeaponOpDelay() < CurTime() and self:GetNextPrimaryFire() < CurTime() and -- Adding this delays bolting if the RPM is too low, but removing it may reintroduce the double pump bug. Increasing the RPM allows you to shoot twice on many multiplayer servers. Sure would be convenient if everything just worked nicely
            (!GetConVar("arccw_clicktocycle"):GetBool() and (self:GetCurrentFiremode().Mode == 2 or !owner:KeyDown(IN_ATTACK))
            or GetConVar("arccw_clicktocycle"):GetBool() and (self:GetCurrentFiremode().Mode == 2 or owner:KeyPressed(IN_ATTACK))) then
        local anim = self:SelectAnimation("cycle")
        anim = self:GetBuff_Hook("Hook_SelectCycleAnimation", anim) or anim
        local mult = self:GetBuff_Mult("Mult_CycleTime")
        local p = self:PlayAnimation(anim, mult, true, 0, true)
        if p then
            self:SetNeedCycle(false)
            self:SetPriorityAnim(CurTime() + self:GetAnimKeyTime(anim, true) * mult)
        end
    end

    if self:GetGrenadePrimed() and !(owner:KeyDown(IN_ATTACK) or owner:KeyDown(IN_ATTACK2)) and (!game.SinglePlayer() or SERVER) then
        self:Throw()
    end

    if self:GetGrenadePrimed() and self.GrenadePrimeTime > 0 and self.isCooked then
        local heldtime = (CurTime() - self.GrenadePrimeTime)

        local ft = self:GetBuff_Override("Override_FuseTime") or self.FuseTime

        if ft and (heldtime >= ft) and (!game.SinglePlayer() or SERVER) then
            self:Throw()
        end
    end

    if IsFirstTimePredicted() and self:GetNextPrimaryFire() < CurTime() and owner:KeyReleased(IN_USE) then
        if self:InBipod() then
            self:ExitBipod()
        else
            self:EnterBipod()
        end
    end

    if ((game.SinglePlayer() and SERVER) or (!game.SinglePlayer() and true)) and self:GetBuff_Override("Override_TriggerDelay", self.TriggerDelay) then
        if owner:KeyReleased(IN_ATTACK) and self:GetBuff_Override("Override_TriggerCharge", self.TriggerCharge) and self:GetTriggerDelta(true) >= 1 then
            self:PrimaryAttack()
        else
            self:DoTriggerDelay()
        end
    end

    if self:GetCurrentFiremode().RunawayBurst then

        if self:GetBurstCount() > 0 and ((game.SinglePlayer() and SERVER) or (!game.SinglePlayer() and true)) then
            self:PrimaryAttack()
        end

        if self:Clip1() < self:GetBuff("AmmoPerShot") or self:GetBurstCount() == self:GetBurstLength() then
            self:SetBurstCount(0)
            if !self:GetCurrentFiremode().AutoBurst then
                self.Primary.Automatic = false
            end
        end
    end

    if owner:KeyReleased(IN_ATTACK) then

        if !self:GetCurrentFiremode().RunawayBurst then
            self:SetBurstCount(0)
            self.LastTriggerTime = -1 -- Cannot fire again until trigger released
            self.LastTriggerDuration = 0
        end

        if self:GetCurrentFiremode().Mode < 0 and !self:GetCurrentFiremode().RunawayBurst then
            local postburst = self:GetCurrentFiremode().PostBurstDelay or 0

            if (CurTime() + postburst) > self:GetWeaponOpDelay() then
                --self:SetNextPrimaryFire(CurTime() + postburst)
                self:SetWeaponOpDelay(CurTime() + postburst * self:GetBuff_Mult("Mult_PostBurstDelay") + self:GetBuff_Add("Add_PostBurstDelay"))
            end
        end
    end

    if owner and owner:GetInfoNum("arccw_automaticreload", 0) == 1 and self:Clip1() == 0 and !self:GetReloading() and CurTime() > self:GetNextPrimaryFire() + 0.2 then
        self:Reload()
    end

    if (!(self:GetBuff_Override("Override_ReloadInSights") or self.ReloadInSights) and (self:GetReloading() or owner:KeyDown(IN_RELOAD))) then
        if !(self:GetBuff_Override("Override_ReloadInSights") or self.ReloadInSights) and self:GetReloading() then
            self:ExitSights()
        end
    end


    if self:GetBuff_Hook("Hook_ShouldNotSight") and (self.Sighted or self:GetState() == ArcCW.STATE_SIGHTS) then
        self:ExitSights()
    elseif self:GetHolster_Time() > 0 then
        self:ExitSights()
    else

        -- no it really doesn't, past me
        local sighted = self:GetState() == ArcCW.STATE_SIGHTS
        local toggle = owner:GetInfoNum("arccw_toggleads", 0) >= 1
        local suitzoom = owner:KeyDown(IN_ZOOM)
        local sp_cl = game.SinglePlayer() and CLIENT

        -- if in singleplayer, client realm should be completely ignored
        if toggle and !sp_cl then
            if owner:KeyPressed(IN_ATTACK2) then
                if sighted then
                    self:ExitSights()
                elseif !suitzoom then
                    self:EnterSights()
                end
            elseif suitzoom and sighted then
                self:ExitSights()
            end
        elseif !toggle then
            if (owner:KeyDown(IN_ATTACK2) and !suitzoom) and !sighted then
                self:EnterSights()
            elseif (!owner:KeyDown(IN_ATTACK2) or suitzoom) and sighted then
                self:ExitSights()
            end
        end

    end

    if (!game.SinglePlayer() and IsFirstTimePredicted()) or (game.SinglePlayer() and true) then
        if self:InSprint() and (self:GetState() != ArcCW.STATE_SPRINT) then
            self:EnterSprint()
        elseif !self:InSprint() and (self:GetState() == ArcCW.STATE_SPRINT) then
            self:ExitSprint()
        end
    end

    if game.SinglePlayer() or IsFirstTimePredicted() then
        self:SetSightDelta(math.Approach(self:GetSightDelta(), self:GetState() == ArcCW.STATE_SIGHTS and 0 or 1, FrameTime() / self:GetSightTime()))
        self:SetSprintDelta(math.Approach(self:GetSprintDelta(), self:GetState() == ArcCW.STATE_SPRINT and 1 or 0, FrameTime() / self:GetSprintTime()))
    end

    if CLIENT and (game.SinglePlayer() or IsFirstTimePredicted()) then
        self:ProcessRecoil()
    end
	local param = self:Clip1() + 1
	self:SetPoseParameter( "ammo", param )
    if CLIENT and IsValid(vm) then
		vm:SetPoseParameter( "ammo", param )

        for i = 1, vm:GetBoneCount() do
            vm:ManipulateBoneScale(i, vec1)
        end

        for i, k in pairs(self:GetBuff_Override("Override_CaseBones", self.CaseBones) or {}) do
            if !isnumber(i) then continue end
            for _, b in pairs(istable(k) and k or {k}) do
                local bone = vm:LookupBone(b)

                if !bone then continue end

                if self:GetVisualClip() >= i then
                    vm:ManipulateBoneScale(bone, vec1)
                else
                    vm:ManipulateBoneScale(bone, vec0)
                end
            end
        end

        for i, k in pairs(self:GetBuff_Override("Override_BulletBones", self.BulletBones) or {}) do
            if !isnumber(i) then continue end
            for _, b in pairs(istable(k) and k or {k}) do
                local bone = vm:LookupBone(b)

                if !bone then continue end

                if self:GetVisualBullets() >= i then
                    vm:ManipulateBoneScale(bone, vec1)
                else
                    vm:ManipulateBoneScale(bone, vec0)
                end
            end
        end

        for i, k in pairs(self:GetBuff_Override("Override_StripperClipBones", self.StripperClipBones) or {}) do
            if !isnumber(i) then continue end
            for _, b in pairs(istable(k) and k or {k}) do
                local bone = vm:LookupBone(b)

                if !bone then continue end

                if self:GetVisualLoadAmount() >= i then
                    vm:ManipulateBoneScale(bone, vec1)
                else
                    vm:ManipulateBoneScale(bone, vec0)
                end
            end
        end
    end

    self:DoHeat()

    self:ThinkFreeAim()

    -- if CLIENT then
        -- if !IsValid(ArcCW.InvHUD) then
        --     gui.EnableScreenClicker(false)
        -- end

        -- if self:GetState() != ArcCW.STATE_CUSTOMIZE then
        --     self:CloseCustomizeHUD()
        -- else
        --     self:OpenCustomizeHUD()
        -- end
    -- end

    for i, k in pairs(self.Attachments) do
        if !k.Installed then continue end
        local atttbl = ArcCW.AttachmentTable[k.Installed]

        if atttbl.DamagePerSecond then
            local dmg = atttbl.DamagePerSecond * FrameTime()

            self:DamageAttachment(i, dmg)
        end
    end

    if CLIENT then
        self:DoOurViewPunch()
    end

    if self.Throwing and self:Clip1() == 0 and self:Ammo1() > 0 then
        self:SetClip1(1)
        owner:SetAmmo(self:Ammo1() - 1, self.Primary.Ammo)
    end

    -- self:RefreshBGs()

    if self:GetMagUpIn() != 0 and CurTime() > self:GetMagUpIn() then
        self:ReloadTimed()
        self:SetMagUpIn( 0 )
    end

    if self:HasBottomlessClip() and self:Clip1() != ArcCW.BottomlessMagicNumber then
        self:Unload()
        self:SetClip1(ArcCW.BottomlessMagicNumber)
    elseif !self:HasBottomlessClip() and self:Clip1() == ArcCW.BottomlessMagicNumber then
        self:SetClip1(0)
    end

    -- Performing traces in rendering contexts seem to cause flickering with c_hands that have QC attachments(?)
    -- Since we need to run the trace every tick anyways, do it here instead
    if CLIENT then
        self:BarrelHitWall()
    end

    self:GetBuff_Hook("Hook_Think")

    -- Running this only serverside in SP breaks animation processing and causes CheckpointAnimation to !reset.
    --if SERVER or !game.SinglePlayer() then
        self:ProcessTimers()
    --end

    -- Only reset to idle if we don't need cycle. empty idle animation usually doesn't play nice
    if self:GetNextIdle() != 0 and self:GetNextIdle() <= CurTime() and !self:GetNeedCycle()
            and self:GetHolster_Time() == 0 and self:GetShotgunReloading() == 0 then
        self:SetNextIdle(0)
        self:PlayIdleAnimation(true)
    end

    if self:GetUBGLDebounce() and !self:GetOwner():KeyDown(IN_RELOAD) then
        self:SetUBGLDebounce( false )
    end
end