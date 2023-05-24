SWEP.Base = "arccw_snow_battery_subbase"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Halo"
SWEP.UC_CategoryPack = "1Halo 3"
SWEP.AdminOnly = false
-- Custom Crosshair Malarkey, cry at the amount of stuff for it!
SWEP.CrosshairMat = "snowysnowtime/reticles/uc/ret_pr"
SWEP.SizeX = 127 -- Microadjustments for different crosshair sizes/types.
SWEP.SizeY = 127
SWEP.FixX = 62
SWEP.FixY = 61
SWEP.SizeOutlineX = 131 -- Microadjustments for different crosshair sizes/types.
SWEP.SizeOutlineY = 131
SWEP.FixOutlineX = 64
SWEP.FixOutlineY = 63
SWEP.Precise = false -- Enables the center dot.

SWEP.PrintName = "Plasma Rifle"
SWEP.Trivia_Class = "Type-25 Directed Energy Rifle"
SWEP.Trivia_Desc = "This is a Type-25 Directed Energy Rifle"
SWEP.Trivia_Manufacturer = "Iruiru Armory"
SWEP.Trivia_Calibre = "Plasma"
SWEP.Trivia_Mechanism = "Automatic"
SWEP.MeleeTime = 1

SWEP.Slot = 2

SWEP.UseHands = true

SWEP.MeleeSwingSound = ""
SWEP.MeleeMissSound = ""
SWEP.MeleeHitSound = "hceworld"
SWEP.MeleeHitNPCSound = "hceslap"

SWEP.ViewModel = "models/snowysnowtime/suburb/hce/rifles/c_fp_pr.mdl"
SWEP.WorldModel = "models/snowysnowtime/vuthakral/w_plasmarifle.mdl"
SWEP.ViewModelFOV = 74

SWEP.Damage = 20
SWEP.DamageMin = 20 -- damage done at maximum range
SWEP.Range =  700 -- in METRES
SWEP.Penetration = 0
SWEP.DamageType = DMG_BULLET
SWEP.MuzzleVelocity = 126 -- projectile or phys bullet muzzle velocity -- IN M/S
SWEP.NeverPhysBullet = true

SWEP.TracerNum = 1 -- tracer every X
SWEP.Tracer 	= "effect_arc9_halo3_tracer_plasmarifle"
SWEP.MuzzleFlashColor = Color(0, 80, 255)
SWEP.ImpactEffect = "effect_arc9_halo3_impact_plasmarifle"

SWEP.Recoil = 0.2
SWEP.RecoilSide = 0.2

-- Fesiug's Plasma subbase
SWEP.ArcCW_Halo_Heat    = true
SWEP.ArcCW_Halo_Battery = true
SWEP.ArcCW_Halo_Accel   = true

SWEP.Delay_Accel        = 1.8
SWEP.Delay_Decel        = 0.25
SWEP.Delay_Min      = 60 / 420
SWEP.Delay_Max      = 60 / 600

SWEP.Heat_Accel         = 0.08
SWEP.Heat_Decel         = 0.3
SWEP.BatteryConsumption     = 0.005

SWEP.Delay_Penalty      = 0.2
SWEP.Heat_Penalty       = 0.2
SWEP.Misfire_Threshold  = 0.9
SWEP.Misfire_Chance     = 0.5

SWEP.Delay = 60 / 360 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = 2,
        PrintName = "PLAS",
        CustomBars = "--!--"
    },
    {
        Mode = 0
    }
}

SWEP.NPCWeaponType = {"weapon_ar2"}
SWEP.NPCWeight = 25

SWEP.ManualAction = false

SWEP.Primary.Ammo = "arccwhce_plasmabattery" -- what ammo type the gun uses
SWEP.MagID = "hs338" -- the magazine pool this gun draws from

SWEP.ShootVol = 140 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = Sound("plasma_fire")
SWEP.ShootSoundSilenced = nil
SWEP.DistantShootSound = "h3_pr_lod"

SWEP.MuzzleEffect = "arc9ce_halo_3_muzzle_plasma_rifle"
SWEP.ShellModel = "models/shells/shell_338mag.mdl"
SWEP.ShellPitch = 80
SWEP.ShellScale = 1.5

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.O_Hook_Override_MuzzleEffectAttachment = function(wep, data)
    local shot = wep:GetNthShot()
    if (shot % 2 == 1) then -- odd
        data.current = 1
    else                    -- even
        data.current = 2
    end
end

SWEP.SightTime = 0.35
SWEP.SpeedMult = 0.85
SWEP.SightedSpeedMult = 0.25

SWEP.RejectAttachments = {
    ["ammo_cerberus"] = true, -- fuck cerberus
    ["acwatt_perk_fastbolt"] = true, -- whats the point of this on my weapons?
    ["acwatt_perk_beefficient"] = true, -- never heard of her
}

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    -- [0] = "bulletchamber",
    -- [1] = "bullet1"
}

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-3.375, -3, 0),
    Ang = Angle(0.792, 0.017, 0),
    Magnification = 1.1,
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "smg"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

SWEP.ActivePos = Vector(0, 0, 1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(3, -3, -0.5)
SWEP.HolsterAng = Angle(-10, 30, -10)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.CustomizePos = Vector(1.824, -4, 0.897)
SWEP.CustomizeAng = Angle(12.149, 30.547, 0)

SWEP.BarrelLength = 30
SWEP.AttachmentElements = {
	["brute"] = {
        VMSkin = 1,
        WMSkin = 1,
    },
}

SWEP.ExtraSightDist = 15

SWEP.Attachments = {
    {
        PrintName = "Skull",
        Slot = {"perk","go_perk"}
    },
    {
        PrintName = "Charm",
        Slot = "charm",
        FreeSlot = true,
        Bone = "gun", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(3.5, -1.5, 4.7), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 10),
            wpos = Vector(6, 2.4, -3.5),
            wang = Angle(-10.393, 0, 180)
        },
    },
	{
        PrintName = "Passive",
        Slot = {"halo_passive"},
		Installed = "passive_halo_non_prec_wep_mult",
		Integral = true
    },
}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },
	["fire_iron"] = {
        Source = "fire",
    },
    ["draw"] = {
        Source = "draw",
        Time = 20/30,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
    ["fire"] = {
        Source = "fire",
    },
    ["misfire"] = {
        Source = "misfire",
		SoundTable = {{s = {"hce/plasma_misfire1.wav","hce/plasma_misfire2.wav","hce/plasma_misfire3.wav"}, t = 0}},
    },
    ["reload"] = {
        Source = "draw",
    },
	["inspect"] = {
        Source = "fidget",
        Time = 0.6,
    },
	["bash"] = {
        Source = "melee",
		Time = 33/30,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.2,
    },
    ["enter_vent"] = {
        Source = "oh_start",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 59/30,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0,
    },
    ["idle_vent"] = {
        Source = "oh_idle",
        Time = 1/1,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0,
    },
    ["exit_vent"] = {
        Source = "oh_exit",
        Time = 35/30,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.5,
    },
}

SWEP.Rarity = "Legendary"
-- nZombies Stuff
SWEP.NZWonderWeapon		= false	-- Is this a Wonder-Weapon? If true, only one player can have it at a time. Cheats aren't stopped, though.
--SWEP.NZRePaPText		= "your text here"	-- When RePaPing, what should be shown? Example: Press E to your text here for 2000 points.
SWEP.NZPaPName				= "The Vaporizer"
--SWEP.NZPaPReplacement 	= ""	-- If Pack-a-Punched, replace this gun with the entity class shown here.
SWEP.NZPreventBox		= false	-- If true, this gun won't be placed in random boxes GENERATED. Users can still place it in manually.
SWEP.NZTotalBlackList	= false	-- if true, this gun can't be placed in the box, even manually, and can't be bought off a wall, even if placed manually. Only code can give this gun.

SWEP.Primary.MaxAmmo = 1
-- Max Ammo function

function SWEP:NZMaxAmmo()

	local ammo_type = self:GetPrimaryAmmoType() or self.Primary.Ammo

    if SERVER then
        self.Owner:SetAmmo( self.Primary.MaxAmmo, ammo_type )
    end
end

-- PaP Function
function SWEP:OnPaP()
self.Ispackapunched = 1
self.PrintName = "The Vaporizer"
self.Primary.MaxAmmo = 200
self.Delay_Accel        = 0.15
self.Delay_Decel        = 0.6
self.Delay_Min      = 0.1555555
self.Delay_Max      = 0.07
self.Heat_Accel         = 0.07
self.Heat_Decel         = 0.4
self.BatteryConsumption     = 1/800
return true
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
	surface.SetDrawColor(outlineClr.r, outlineClr.g, outlineClr.b, outlineClr.a * self.CrosshairDelta * self.CrosshairDelta / 2)
	surface.DrawTexturedRect(x - p_w / 2 - self.FixOutlineX, y - p_w / 2 - self.FixOutlineY, self.SizeOutlineX, self.SizeOutlineY)
	
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