SWEP.Base = "arccw_snow_halo_subbase"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Halo" -- Not the final name but idk what to name it ~Snowy
SWEP.UC_CategoryPack = "1Halo: Combat Evolved"
SWEP.AdminOnly = false
-- Custom Crosshair Malarkey, cry at the amount of stuff for it!
SWEP.CrosshairMat = "snowysnowtime/reticles/uc/ret_ne"
SWEP.CrosshairMatOutline = "snowysnowtime/reticles/uc/ret_smg_o"
SWEP.SizeX = 127 -- Microadjustments for different crosshair sizes/types.
SWEP.SizeY = 127
SWEP.FixX = 62
SWEP.FixY = 61
SWEP.SizeOutlineX = 131 -- Microadjustments for different crosshair sizes/types.
SWEP.SizeOutlineY = 131
SWEP.FixOutlineX = 64
SWEP.FixOutlineY = 63
SWEP.Precise = false -- Enables the center dot.

SWEP.PrintName = "Needler"
SWEP.Trivia_Class = "Type-33 GML"
SWEP.Trivia_Desc = "The MA5B was in service to some extent during the Insurrection, being considered a standard weapon in September of 2525, and played a significant role in the Covenant War that followed. MA5Bs were employed by various SPARTAN-IIs during Operation: SILENT STORM and the ensuing Netherop engagement in 2526. In 2531, the marine compliment of the UNSC Spirit of Fire made use of the MA5B on Harvest, Arcadia and Etran Harborage, while members of Blue Team deployed with it on their mission to the decommissioned Platform 966A the same year, and again during the Battle of Jericho VII in 2535. The MA5B saw particularly heavy use in 2552. On Reach, it was wielded by Orbital Drop Shock Troopers sent to engage John-117 during the live-fire test of MJOLNIR Mark V and Cortana, and by the Spartans of Red Team during the defense of Orbital Defense Generators. John-117 and the marine compliment of the UNSC Pillar of Autumn utilized the MA5B throughout the Battle of Halo Alpha, and in the skirmish over Threshold that followed. Spartan personnel during the Onyx conflict also made use of the weapon."
SWEP.Trivia_Manufacturer = "Misriah Armory"
SWEP.Trivia_Calibre = "7.62x51mm M118 FMJ-AP"
SWEP.Trivia_Mechanism = "Automatic"
SWEP.Trivia_Country = "never heard of her"
SWEP.Trivia_Year = "Assault Rifle"
SWEP.AmmoRefreshVisualTime = 1 -- This is a negative value intrinsically. Do not make negative here.

SWEP.Slot = 2

SWEP.UseHands = true

SWEP.ViewModel = "models/snowysnowtime/suburb/hce/pistols/needler_ce.mdl"
SWEP.WorldModel = "models/snowysnowtime/suburb/hce/rifles/c_fp_cear.mdl"
SWEP.ViewModelFOV = 70

--  You will need this for the journey ahead
--  Probably should set this to your first mode
	SWEP.Recoil = 0.2
	SWEP.RecoilSide = 0.2
	SWEP.RecoilPunch = 1
	SWEP.MaxRecoilBlowback = 1
	SWEP.RecoilPunchBack = 2
	SWEP.VisualRecoilMult = 24
	SWEP.Damage = 25
	SWEP.DamageMin = 15
	SWEP.AccuracyMOA = 70
	SWEP.HipDispersion = 360
	SWEP.JumpDispersion = 0
	SWEP.ChamberSize = 0
	SWEP.Sway = 0

local balance = {
    [0] = {
        -- HaloCW
        Recoil = 0.2,
        RecoilSide = 0.2,
		MaxRecoilBlowback = 14,
		RecoilPunchBack = 12,
        Damage = 25,
        DamageMin = 15,
        AccuracyMOA = 70,
        HipDispersion = 360,
        JumpDispersion = 0,
        ChamberSize = 0,
    },
    [1] = {
        -- halo purist
        Recoil = 0,
        RecoilSide = 0,
		MaxRecoilBlowback = 0,
		RecoilPunchBack = 2,
        Damage = 10,
        DamageMin = 10,
        JumpDispersion = 0,
        HipDispersion = 0,
        MoveDispersion = 0,
        ChamberSize = 0,
    },
    [2] = {
        -- arccw
        Recoil = 0.2,
        RecoilSide = 0.2,
		MaxRecoilBlowback = 1,
		RecoilPunchBack = 2,
        Damage = 30,
        DamageMin = 10,
        AccuracyMOA = 70,
        HipDispersion = 360,
        MoveDispersion = 120,
        ChamberSize = 1,
    }
}

function SWEP:ArcCW_Halo_Setup()
    local val = GetConVar("arccw_ce_bal"):GetInt()
    for i, v in pairs(balance[val]) do
        self[i] = v
    end
end

DEFINE_BASECLASS("arccw_snow_halo_subbase")
function SWEP:Initialize()
    BaseClass.Initialize(self)

    self:ArcCW_Halo_Setup()
end

SWEP.MeleeSwingSound = ""
SWEP.MeleeMissSound = ""
SWEP.WeaponHitSound = "suburb.ndlr.meleehit"
SWEP.MeleeHitSound = "suburb.shared.meleeworld"
SWEP.MeleeHitNPCSound = "suburb.shared.meleeslap"
SWEP.MeleeDamage = 25
SWEP.MeleeRange = 48 -- Shared between the Needler, Plasma Rifle/Pistol, and Shotgun
SWEP.Backstab = true
SWEP.BackstabMultiplier = 10
SWEP.Lunge = false -- Whether to allow the bash/melee to lunge a short distance
SWEP.LungeLength = 64 -- Maximum distance for lunging
SWEP.MeleeTime = 1.5

SWEP.Range =  100 -- in METRES
SWEP.Penetration = 25
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 905 -- projectile or phys bullet muzzle velocity
-- IN M/S

SWEP.TracerNum = 1 -- tracer every X
SWEP.Tracer 	= "effect_arc9_halo3_tracer_br"

SWEP.Primary.ClipSize = 20 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 20
SWEP.ReducedClipSize = 20

SWEP.Delay = 1 / 10 -- 1(second) / Halo Delay (RPS)
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = 0,
    }
}

SWEP.NPCWeaponType = {"weapon_ar2","weapon_smg"}
SWEP.NPCWeight = 25

SWEP.ManualAction = false

SWEP.Primary.Ammo = "ar2" -- what ammo type the gun uses
SWEP.MagID = "hs338" -- the magazine pool this gun draws from

SWEP.ShootVol = 140 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "suburb.ndlr.fire"
SWEP.ShootSoundSilenced = "suburb.cear.fire_sup"
SWEP.DistantShootSound = "ar_lod"

SWEP.MuzzleEffect = "arc9ce_halo_ce_muzzle_needler"
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
		Installed = "passive_halo_non_prec_wep_mult",
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
    ["draw"] = {
        Source = "draw",
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
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
                s = "suburb.ndlr.reload0", -- sound; can be string or table
                p = 100, -- pitch
                v = 0, -- volume
                t = 0.125, -- time at which to play relative to Animations.Time
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
                s = "suburb.ndlr.reload1", -- sound; can be string or table
                p = 100, -- pitch
                v = 0, -- volume
                t = 1.3575, -- time at which to play relative to Animations.Time
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
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		SoundTable = {
			-- The Main Shit
            {
                s = "suburb.ndlr.reload0", -- sound; can be string or table
                p = 100, -- pitch
                v = 0, -- volume
                t = 0.125, -- time at which to play relative to Animations.Time
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
                s = "suburb.ndlr.reload1", -- sound; can be string or table
                p = 100, -- pitch
                v = 0, -- volume
                t = 1.3575, -- time at which to play relative to Animations.Time
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
	["fire"] = {
        Source = "fire",
    },
}

SWEP.Hook_ModifyRPM = function(wep, delay)
    local max = math.min(7, wep:GetCapacity())

    local delta = wep.BurstCount * 1.1 / max

    local mult = Lerp(delta, 0.5, 1)

    return delay / mult
end