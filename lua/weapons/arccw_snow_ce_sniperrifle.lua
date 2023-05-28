SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Halo" -- Not the final name but idk what to name it ~Snowy
SWEP.UC_CategoryPack = "1Halo: Combat Evolved"
SWEP.AdminOnly = false
-- Custom Crosshair Malarkey, cry at the amount of stuff for it!
SWEP.CrosshairMat = "snowysnowtime/reticles/uc/ret_sr"
SWEP.CrosshairMatOutline = "snowysnowtime/reticles/uc/ret_smg_o"
SWEP.SizeX = 33 -- Microadjustments for different crosshair sizes/types.
SWEP.SizeY = 33
SWEP.FixX = 16
SWEP.FixY = 16
SWEP.SizeOutlineX = 131 -- Microadjustments for different crosshair sizes/types.
SWEP.SizeOutlineY = 131
SWEP.FixOutlineX = 64
SWEP.FixOutlineY = 63
SWEP.Precise = true -- Enables the center dot.

SWEP.PrintName = "Sniper Rifle"
SWEP.Trivia_Class = "SRS99C-S2 AM"
SWEP.Trivia_Desc = "The MA5B was in service to some extent during the Insurrection, being considered a standard weapon in September of 2525, and played a significant role in the Covenant War that followed. MA5Bs were employed by various SPARTAN-IIs during Operation: SILENT STORM and the ensuing Netherop engagement in 2526. In 2531, the marine compliment of the UNSC Spirit of Fire made use of the MA5B on Harvest, Arcadia and Etran Harborage, while members of Blue Team deployed with it on their mission to the decommissioned Platform 966A the same year, and again during the Battle of Jericho VII in 2535. The MA5B saw particularly heavy use in 2552. On Reach, it was wielded by Orbital Drop Shock Troopers sent to engage John-117 during the live-fire test of MJOLNIR Mark V and Cortana, and by the Spartans of Red Team during the defense of Orbital Defense Generators. John-117 and the marine compliment of the UNSC Pillar of Autumn utilized the MA5B throughout the Battle of Halo Alpha, and in the skirmish over Threshold that followed. Spartan personnel during the Onyx conflict also made use of the weapon."
SWEP.Trivia_Manufacturer = "Misriah Armory"
SWEP.Trivia_Calibre = "14.5×114mm APFSDS"
SWEP.Trivia_Mechanism = "Automatic"
SWEP.Trivia_Country = "never heard of her"
SWEP.Trivia_Year = "SRS99C-S2 AM"

SWEP.Slot = 3

SWEP.UseHands = true

SWEP.ViewModel = "models/snowysnowtime/suburb/hce/rifles/sniper_ce.mdl"
SWEP.WorldModel = "models/snowysnowtime/suburb/hce/rifles/wm_snipperrifle_ce.mdl"
SWEP.ViewModelFOV = 70

SWEP.Recoil = 0
SWEP.RecoilSide = 0
SWEP.RecoilPunch = 5
SWEP.MaxRecoilBlowback = 1
SWEP.RecoilPunchBack = 2
SWEP.VisualRecoilMult = 32
SWEP.Damage = 99
SWEP.DamageMin = 99
SWEP.AccuracyMOA = 0.1
SWEP.HipDispersion = 50
SWEP.JumpDispersion = 0
SWEP.ChamberSize = 0
SWEP.Sway = 0

SWEP.MeleeSwingSound = ""
SWEP.MeleeMissSound = ""
SWEP.WeaponHitSound = "suburb.shared.meleehitweapon"
SWEP.MeleeHitSound = "suburb.shared.meleeworld"
SWEP.MeleeHitNPCSound = "suburb.shared.meleeslap"
SWEP.MeleeDamage = 25
SWEP.MeleeRange = 56 -- Shared with the Sniper Rifle
SWEP.Backstab = true
SWEP.BackstabMultiplier = 10
SWEP.Lunge = false -- Whether to allow the bash/melee to lunge a short distance
SWEP.LungeLength = 64 -- Maximum distance for lunging
SWEP.MeleeTime = 1.5
SWEP.MeleeAttackTime = 0.2

SWEP.Range =  100 -- in METRES
SWEP.Penetration = 0
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 905 -- projectile or phys bullet muzzle velocity
-- IN M/S

SWEP.TracerNum = 1 -- tracer every X
SWEP.Tracer 	= "effect_arc9_halo3_tracer_sniper"

SWEP.Primary.ClipSize = 4 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 6
SWEP.ReducedClipSize = 2

SWEP.Delay = 1 / 2 -- 1(second) / Halo Delay (RPS)
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

SWEP.NPCWeaponType = {"weapon_ar2","weapon_smg"}
SWEP.NPCWeight = 25

SWEP.ManualAction = false

SWEP.Primary.Ammo = "SniperPenetratedRound" -- what ammo type the gun uses
SWEP.MagID = "hs338" -- the magazine pool this gun draws from

SWEP.ShootVol = 140 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "suburb.sr.firehd"
SWEP.ShootSoundSilenced = "suburb.cear.fire_sup"
SWEP.DistantShootSound = "ar_lod"

SWEP.MuzzleEffect = "arc9ce_halo_ce_muzzle_sniper_rifle"
SWEP.ShellModel = "models/shells/shell_338mag.mdl"
SWEP.ShellPitch = 80
SWEP.ShellScale = 1.5

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 4 -- which attachment to put the case effect on

SWEP.SightTime = 0.35
SWEP.SpeedMult = 0.85
SWEP.SightedSpeedMult = 0.25

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    -- [0] = "bulletchamber",
    -- [1] = "bullet1"
}

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(0, -2, 1),
    Ang = Angle(0, 0, 5),
    Magnification = 1.2,
	CrosshairInSights = true,
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

SWEP.ActivePos = Vector(0, -0.1, 1)
SWEP.ActiveAng = Angle(1.5, 1, 1.5)

SWEP.HolsterPos = Vector(3, -3, -0.5)
SWEP.HolsterAng = Angle(-10, 30, -10)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.CustomizePos = Vector(2.824, -2, -1.897)
SWEP.CustomizeAng = Angle(12.149, 30.547, 0)

SWEP.CrouchPos = Vector(-8, -5, 2)
SWEP.CrouchAng = Angle(0, 0, -45)

SWEP.BarrelLength = 0
SWEP.AttachmentElements = {
	["mcc"] = {
        VMSkin = 1,
        WMSkin = 1,
    },
}

SWEP.ExtraSightDist = 3

SWEP.Attachments = {
	{
        PrintName = "Skull",
        Slot = {"skull_halo"},
		FreeSlot = true
    },
    {
        PrintName = "Charm",
        Slot = "charm",
        FreeSlot = true,
        Bone = "frame gun", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(9.5, -0.6, 5.25), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 10),
            wpos = Vector(6, 2.4, -3.5),
            wang = Angle(-10.393, 0, 180)
        },
    },
	{
        PrintName = "Skin",
        Slot = {"skin_hcear","skin_halouniversal"},
        DefaultAttName = "Factory Default",
        FreeSlot = true
    },
	{
        PrintName = "Passive",
        Slot = {"halo_passive"},
		Installed = "passive_halo_prec_wep_mult",
		Integral = true
    },
}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },
	["exit_inspect"] = {
		Source = "fidget",
	},
	["fire_iron"] = {
        Source = "fire",
    },
    ["draw"] = {
        Source = "draw",
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
    ["fire"] = {
        Source = "fire",
    },
	["bash"] = {
        Source = "melee",
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.2,
    },
    ["reload"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		SoundTable = {
			-- The Main Shit
            {
                s = "suburb.sr.reload", -- sound; can be string or table
                p = 100, -- pitch
                v = 0, -- volume
                t = 0.01, -- time at which to play relative to Animations.Time
                c = CHAN_STATIC, -- channel to play the sound

                -- Can also play an effect at the same time
                e = "", -- effect name
                att = nil, -- attachment, defaults to shell attachment
                mag = 100, -- magnitude
                -- also capable of modifying bodygroups
                ind = 0,
                bg = 0,
            },
        },
        Checkpoints = {24, 33, 51, 58, 62, 74, 80},
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		SoundTable = {
			-- The Main Shit
             {
                s = "suburb.sr.reloade", -- sound; can be string or table
                p = 100, -- pitch
                v = 0, -- volume
                t = 0.01, -- time at which to play relative to Animations.Time
                c = CHAN_STATIC, -- channel to play the sound

                -- Can also play an effect at the same time
                e = "", -- effect name
                att = nil, -- attachment, defaults to shell attachment
                mag = 100, -- magnitude
                -- also capable of modifying bodygroups
                ind = 0,
                bg = 0,
            },
        },
        Checkpoints = {24, 33, 51, 58, 62, 74, 80},
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
}

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
	surface.SetTexture(surface.GetTextureID(self.CrosshairMatOutline))
	surface.SetDrawColor(outlineClr.r, outlineClr.g, outlineClr.b, outlineClr.a * self.CrosshairDelta * self.CrosshairDelta / 1.75)
	surface.DrawTexturedRect(x - p_w / 2 - self.FixX, y - p_w / 2 - self.FixY, self.SizeX, self.SizeY)
	
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
            mins = Vector(-16, -16, -8),
            maxs = Vector(16, 16, 8),
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