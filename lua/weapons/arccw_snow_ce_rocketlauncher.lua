SWEP.Base = "arccw_snow_halo_subbase"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Halo" -- Not the final name but idk what to name it ~Snowy
SWEP.UC_CategoryPack = "1Halo: Combat Evolved"
SWEP.AdminOnly = false
-- Custom Crosshair Malarkey, cry at the amount of stuff for it!
SWEP.CrosshairMat = "snowysnowtime/reticles/uc/ret_rl"
SWEP.CrosshairMatOutline = "snowysnowtime/reticles/uc/ret_smg_o"
SWEP.SizeX = 170 -- Microadjustments for different crosshair sizes/types.
SWEP.SizeY = 171
SWEP.FixX = 84
SWEP.FixY = 85
SWEP.SizeOutlineX = 131 -- Microadjustments for different crosshair sizes/types.
SWEP.SizeOutlineY = 131
SWEP.FixOutlineX = 64
SWEP.FixOutlineY = 63
SWEP.Precise = false -- Enables the center dot.
SWEP.ShouldReloadWhenEmpty = true

SWEP.PrintName = "Rocket Launcher"
SWEP.Trivia_Class = "M41 SSR MAV/AW"
SWEP.Trivia_Desc = "The MA5B was in service to some extent during the Insurrection, being considered a standard weapon in September of 2525, and played a significant role in the Covenant War that followed. MA5Bs were employed by various SPARTAN-IIs during Operation: SILENT STORM and the ensuing Netherop engagement in 2526. In 2531, the marine compliment of the UNSC Spirit of Fire made use of the MA5B on Harvest, Arcadia and Etran Harborage, while members of Blue Team deployed with it on their mission to the decommissioned Platform 966A the same year, and again during the Battle of Jericho VII in 2535. The MA5B saw particularly heavy use in 2552. On Reach, it was wielded by Orbital Drop Shock Troopers sent to engage John-117 during the live-fire test of MJOLNIR Mark V and Cortana, and by the Spartans of Red Team during the defense of Orbital Defense Generators. John-117 and the marine compliment of the UNSC Pillar of Autumn utilized the MA5B throughout the Battle of Halo Alpha, and in the skirmish over Threshold that followed. Spartan personnel during the Onyx conflict also made use of the weapon."
SWEP.Trivia_Manufacturer = "Misriah Armory"
SWEP.Trivia_Calibre = "M19 102mm HE SC SSM"
SWEP.Trivia_Mechanism = "Automatic"
SWEP.Trivia_Country = "never heard of her"
SWEP.Trivia_Year = "M41 SSR MAV/AW"

SWEP.Slot = 4

SWEP.UseHands = true

SWEP.ViewModel = "models/snowysnowtime/suburb/hce/rifles/rocket_ce.mdl"
SWEP.WorldModel = "models/snowysnowtime/suburb/hce/rifles/wm_rocketlauncher_ce.mdl"
SWEP.ViewModelFOV = 70

SWEP.Recoil = 0.01
SWEP.RecoilSide = 0
SWEP.RecoilPunch = 10
SWEP.MaxRecoilBlowback = 1
SWEP.RecoilPunchBack = 2
SWEP.VisualRecoilMult = 128
SWEP.Damage = 25
SWEP.DamageMin = 15
SWEP.AccuracyMOA = 0
SWEP.HipDispersion = 0
SWEP.JumpDispersion = 0
SWEP.MoveDispersion = 0
SWEP.ChamberSize = 0
SWEP.Sway = 0

SWEP.MeleeSwingSound = ""
SWEP.MeleeMissSound = ""
SWEP.WeaponHitSound = "suburb.cerl.meleehit"
SWEP.MeleeHitSound = "suburb.shared.meleeworld"
SWEP.MeleeHitNPCSound = "suburb.shared.meleeslap"
SWEP.MeleeDamage = 25
SWEP.MeleeRange = 68 -- Shared with the Sniper Rifle
SWEP.Backstab = true
SWEP.BackstabMultiplier = 10
SWEP.Lunge = false -- Whether to allow the bash/melee to lunge a short distance
SWEP.LungeLength = 64 -- Maximum distance for lunging
SWEP.MeleeTime = 2
SWEP.MeleeAttackTime = 0.2

SWEP.Range =  700 -- in METRES
SWEP.Penetration = 100
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = "arccw_halo_ce_rocket_launched" -- entity to fire, if any
SWEP.MuzzleVelocity = 1000 -- projectile or phys bullet muzzle velocity
SWEP.PhysBulletDontInheritPlayerVelocity = true
-- IN M/S

SWEP.TracerNum = 1 -- tracer every X
SWEP.Tracer 	= "effect_arc9_halo3_tracer_br"

SWEP.Primary.ClipSize = 2 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 2
SWEP.ReducedClipSize = 2

SWEP.Delay = 1 / 0.5 -- 1(second) / Halo Delay (RPS)
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0,
    }
}

SWEP.NPCWeaponType = {"weapon_ar2","weapon_smg"}
SWEP.NPCWeight = 25

SWEP.ManualAction = false

SWEP.Primary.Ammo = "RPG_Round" -- what ammo type the gun uses
SWEP.MagID = "hs338" -- the magazine pool this gun draws from

SWEP.ShootVol = 140 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "suburb.cerl.fire"
SWEP.ShootSoundSilenced = "suburb.cear.fire_sup"
SWEP.DistantShootSound = "ar_lod"

SWEP.MuzzleEffect = "arc9ce_halo_ce_muzzle_assault_rifle"
SWEP.ShellModel = "models/shells/shell_338mag.mdl"
SWEP.ShellPitch = 80
SWEP.ShellScale = 1.5

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 4 -- which attachment to put the case effect on

SWEP.SightTime = 0.025
SWEP.SpeedMult = 1
SWEP.SightedSpeedMult = 1

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
SWEP.HoldtypeSights = "ar2"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

SWEP.ActivePos = Vector(0, -0.1, 1)
SWEP.ActiveAng = Angle(1.5, 1, 1.5)

SWEP.HolsterPos = Vector(3, -3, -0.5)
SWEP.HolsterAng = Angle(-10, 30, -10)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.CustomizePos = Vector(0, 0, 0)
SWEP.CustomizeAng = Angle(0, 0, 0)

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
            vpos = Vector(9.9, -2.35, 1), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 0),
            wpos = Vector(2, 3.15, -4.3),
            wang = Angle(-10.393, 0, 180)
        },
    },
	{
        PrintName = "Skin",
        Slot = {"skin_rlce","skin_halouniversal"},
        DefaultAttName = "Factory Default",
        FreeSlot = true
    },
	{
        PrintName = "Passive",
        Slot = {"halo_passive"},
		Installed = "passive_halo_non_prec_wep_mult",
		Integral = true
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
		SoundTable = {
			-- The Main Shit
            {
                s = "suburb.cerl.fire_foley", -- sound; can be string or table
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
    },
	["bash"] = {
        Source = "melee",
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.2,
    },
	["enter_inspect"] = {
		Source = "spin_start",
	},
	["idle_inspect"] = {
		Source = "spin",
	},
	["exit_inspect"] = {
		Source = "spin_end",
	},
    ["reload"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		SoundTable = {
			-- The Main Shit
            {
                s = "suburb.cerl.reload1", -- sound; can be string or table
                p = 100, -- pitch
                v = 0, -- volume
                t = 0.45, -- time at which to play relative to Animations.Time
                c = CHAN_STATIC, -- channel to play the sound

                -- Can also play an effect at the same time
                e = "", -- effect name
                att = nil, -- attachment, defaults to shell attachment
                mag = 100, -- magnitude
                -- also capable of modifying bodygroups
                ind = 0,
                bg = 0,
            },
			{
                s = "suburb.cerl.reload2", -- sound; can be string or table
                p = 100, -- pitch
                v = 0, -- volume
                t = 0.87, -- time at which to play relative to Animations.Time
                c = CHAN_STATIC, -- channel to play the sound

                -- Can also play an effect at the same time
                e = "", -- effect name
                att = nil, -- attachment, defaults to shell attachment
                mag = 100, -- magnitude
                -- also capable of modifying bodygroups
                ind = 0,
                bg = 0,
            },
			{
                s = "suburb.cerl.reload3", -- sound; can be string or table
                p = 100, -- pitch
                v = 0, -- volume
                t = 2, -- time at which to play relative to Animations.Time
                c = CHAN_STATIC, -- channel to play the sound

                -- Can also play an effect at the same time
                e = "", -- effect name
                att = nil, -- attachment, defaults to shell attachment
                mag = 100, -- magnitude
                -- also capable of modifying bodygroups
                ind = 0,
                bg = 0,
            },
			{
                s = "suburb.cerl.reload4", -- sound; can be string or table
                p = 100, -- pitch
                v = 0, -- volume
                t = 2.35, -- time at which to play relative to Animations.Time
                c = CHAN_STATIC, -- channel to play the sound

                -- Can also play an effect at the same time
                e = "", -- effect name
                att = nil, -- attachment, defaults to shell attachment
                mag = 100, -- magnitude
                -- also capable of modifying bodygroups
                ind = 0,
                bg = 0,
            },
			{
                s = "suburb.cerl.reload5", -- sound; can be string or table
                p = 100, -- pitch
                v = 0, -- volume
                t = 2.7, -- time at which to play relative to Animations.Time
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
                s = "suburb.cerl.reload1", -- sound; can be string or table
                p = 100, -- pitch
                v = 0, -- volume
                t = 0.85, -- time at which to play relative to Animations.Time
                c = CHAN_STATIC, -- channel to play the sound

                -- Can also play an effect at the same time
                e = "", -- effect name
                att = nil, -- attachment, defaults to shell attachment
                mag = 100, -- magnitude
                -- also capable of modifying bodygroups
                ind = 0,
                bg = 0,
            },
			{
                s = "suburb.cerl.reload2", -- sound; can be string or table
                p = 100, -- pitch
                v = 0, -- volume
                t = 1.27, -- time at which to play relative to Animations.Time
                c = CHAN_STATIC, -- channel to play the sound

                -- Can also play an effect at the same time
                e = "", -- effect name
                att = nil, -- attachment, defaults to shell attachment
                mag = 100, -- magnitude
                -- also capable of modifying bodygroups
                ind = 0,
                bg = 0,
            },
			{
                s = "suburb.cerl.reload3", -- sound; can be string or table
                p = 100, -- pitch
                v = 0, -- volume
                t = 2.4, -- time at which to play relative to Animations.Time
                c = CHAN_STATIC, -- channel to play the sound

                -- Can also play an effect at the same time
                e = "", -- effect name
                att = nil, -- attachment, defaults to shell attachment
                mag = 100, -- magnitude
                -- also capable of modifying bodygroups
                ind = 0,
                bg = 0,
            },
			{
                s = "suburb.cerl.reload4", -- sound; can be string or table
                p = 100, -- pitch
                v = 0, -- volume
                t = 2.75, -- time at which to play relative to Animations.Time
                c = CHAN_STATIC, -- channel to play the sound

                -- Can also play an effect at the same time
                e = "", -- effect name
                att = nil, -- attachment, defaults to shell attachment
                mag = 100, -- magnitude
                -- also capable of modifying bodygroups
                ind = 0,
                bg = 0,
            },
			{
                s = "suburb.cerl.reload5", -- sound; can be string or table
                p = 100, -- pitch
                v = 0, -- volume
                t = 3.1, -- time at which to play relative to Animations.Time
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

function SWEP:DoLHIK()
end