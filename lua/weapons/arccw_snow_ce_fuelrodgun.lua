SWEP.Base = "arccw_snow_battery_subbase"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Halo"
SWEP.UC_CategoryPack = "1Halo: Combat Evolved"
SWEP.AdminOnly = false
-- Custom Crosshair Malarkey, cry at the amount of stuff for it!
SWEP.CrosshairMat = "snowysnowtime/reticles/uc/ret_fr_ce"
SWEP.SizeX = 257 -- Microadjustments for different crosshair sizes/types.
SWEP.SizeY = 257
SWEP.FixX = 128
SWEP.FixY = 126
SWEP.Precise = true -- Enables the center dot.

SWEP.PrintName = "Fuel Rod Gun"
SWEP.Trivia_Class = "Type-33 LAAW"
SWEP.Trivia_Desc = "This is a Type-25 Directed Energy Rifle"
SWEP.Trivia_Manufacturer = "Merchants of Qikost"
SWEP.Trivia_Calibre = "Class-2 Fuel Rods"
SWEP.Trivia_Mechanism = "Semi-Automatic"
SWEP.Trivia_Year = "Zasqi-pattern flak launcher "

SWEP.Slot = 4

SWEP.UseHands = true

SWEP.MeleeSwingSound = ""
SWEP.MeleeMissSound = ""
SWEP.MeleeHitSound = "hceworld"
SWEP.MeleeHitNPCSound = "hceslap"

SWEP.ViewModel = "models/snowysnowtime/suburb/hce/rifles/fuelrodcannon_ce.mdl"
SWEP.WorldModel = "models/snowysnowtime/suburb/hce/rifles/wm_fuelrodcannon_ce.mdl"
SWEP.ViewModelFOV = 70

SWEP.Range =  700 -- in METRES
SWEP.Penetration = 0
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = "arccw_halo_ce_fuel_rod_launched" -- entity to fire, if any
SWEP.MuzzleVelocity = 1500 -- projectile or phys bullet muzzle velocity
SWEP.NeverPhysBullet = true

SWEP.Recoil = 0
SWEP.RecoilSide = 0
SWEP.RecoilPunch = 15
SWEP.MaxRecoilBlowback = 1
SWEP.RecoilPunchBack = 2
SWEP.VisualRecoilMult = 24
SWEP.Damage = 11
SWEP.DamageMin = 5
SWEP.AccuracyMOA = 50
SWEP.HipDispersion = 0
SWEP.JumpDispersion = 0
SWEP.MoveDispersion = 0
SWEP.ChamberSize = 0
SWEP.Sway = 0

SWEP.MeleeSwingSound = ""
SWEP.MeleeMissSound = ""
SWEP.WeaponHitSound = "suburb.pr.meleehit"
SWEP.MeleeHitSound = "suburb.shared.meleeworld"
SWEP.MeleeHitNPCSound = "suburb.shared.meleeslap"
SWEP.MeleeDamage = 25
SWEP.MeleeRange = 48 -- This fucker has the shortest melee range in the game but in arccw its fucking CRAZY
SWEP.Backstab = true
SWEP.BackstabMultiplier = 10
SWEP.Lunge = false -- Whether to allow the bash/melee to lunge a short distance
SWEP.LungeLength = 64 -- Maximum distance for lunging
SWEP.MeleeTime = 1.25

SWEP.TracerNum = 1 -- tracer every X
SWEP.Tracer 	= "effect_arc9_halo3_tracer_plasmarifle"
SWEP.MuzzleFlashColor = Color(0, 80, 255)
SWEP.ImpactEffect = "effect_arc9_halo3_impact_plasmarifle"

-- Fesiug's Plasma subbase
SWEP.ArcCW_Halo_Heat    = true
SWEP.ArcCW_Halo_Battery = true
SWEP.ArcCW_Halo_Accel   = false

SWEP.Heat_Accel     = 0.3
SWEP.Heat_Decel     = 0.18

SWEP.BatteryConsumption     = 0.036
SWEP.Heat_Threshold     = 0.3

SWEP.Delay = 1 / 2.2 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = 1,
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

SWEP.ShootSound = Sound("suburb.frg.fire")
SWEP.ShootSoundSilenced = nil
SWEP.DistantShootSound = "h3_pr_lod"

SWEP.MuzzleEffect = "arc9ce_halo_ce_muzzle_plasma_rifle"
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

SWEP.SightTime = 0.025
SWEP.SpeedMult = 1
SWEP.SightedSpeedMult = 1

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
    Pos = Vector(0, -30, 0),
    Ang = Angle(0, 0, 5),
    Magnification = 2,
	CrosshairInSights = true,
	SwitchToSound = "suburb.zoomin",
    SwitchFromSound = "suburb.zoomout",
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "rpg"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN

SWEP.ActivePos = Vector(0, 0.2, 1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(3, -3, -0.5)
SWEP.HolsterAng = Angle(-10, 30, -10)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.CustomizePos = Vector(1.824, -4, 0.897)
SWEP.CustomizeAng = Angle(12.149, 30.547, 0)

SWEP.BarrelLength = 0
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
        Slot = {"skull_halo"},
		FreeSlot = true
    },
    {
        PrintName = "Charm",
        Slot = "charm",
        FreeSlot = true,
        Bone = "frame gun", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(3, -2.5, -1.25), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 10),
            wpos = Vector(3, 4.3, -6),
            wang = Angle(-10.393, 0, 180)
        },
    },
	{
        PrintName = "Skin",
        Slot = {"skin_frg","skin_halouniversal"},
        DefaultAttName = "Factory Default",
        FreeSlot = true
    },
	{
        PrintName = "optichidden",
        Slot = {"m6dslot"},
		Installed = "2doptic_pistol_ce",
		Integral = true
    },
}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },
    ["draw"] = {
        Source = "draw",
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
	["misfire"] = {
        Source = "misfire",
    },
    ["fire"] = {
        Source = "fire",
    },
	["exit_inspect"] = {
        Source = "fidget",
    },
	["inspect"] = {
        Source = "fidget",
        Time = 0.6,
    },
	["bash"] = {
        Source = "melee",
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.2,
    },
    ["enter_vent"] = {
        Source = "oh_start",
        TPAnim = ACT_HL2MP_GESTURE_RANGE_ATTACK_PHYSGUN,
		Time = 0.5,
		SoundTable = {
			-- The Main Shit
            {
                s = "suburb.pr.oh", -- sound; can be string or table
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
		Time = 0.5,
		TPAnim = ACT_HL2MP_GESTURE_RANGE_ATTACK_PHYSGUN,
		SoundTable = {
			-- The Main Shit
            {
                s = "suburb.pr.oh_exit", -- sound; can be string or table
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
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.5,
    },
}