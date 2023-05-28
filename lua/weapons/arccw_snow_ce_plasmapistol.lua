SWEP.Base = "arccw_snow_battery_subbase"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Halo"
SWEP.UC_CategoryPack = "1Halo: Combat Evolved"
SWEP.AdminOnly = false
-- Custom Crosshair Malarkey, cry at the amount of stuff for it!
SWEP.CrosshairMat = "snowysnowtime/reticles/uc/ret_pp"
SWEP.SizeX = 127 -- Microadjustments for different crosshair sizes/types.
SWEP.SizeY = 127
SWEP.FixX = 64
SWEP.FixY = 69
SWEP.Precise = false -- Enables the center dot.

SWEP.PrintName = "Plasma Pistol"
SWEP.Trivia_Class = "Type-25 Directed Energy Pistol"
SWEP.Trivia_Desc = "Good thing that food nipple is waiting for me back at the starship; cause MAN, I have a big, GRUNTY, THIRST!!!"
SWEP.Trivia_Manufacturer = "Iruiru Armory"
SWEP.Trivia_Calibre = "Plasma"
SWEP.Trivia_Mechanism = "Automatic"
SWEP.Trivia_Year = "Type-25 Directed Energy Pistol"

SWEP.Slot = 1

SWEP.UseHands = true

SWEP.MeleeSwingSound = ""
SWEP.MeleeMissSound = ""
SWEP.MeleeHitSound = "hceworld"
SWEP.MeleeHitNPCSound = "hceslap"

SWEP.ViewModel = "models/snowysnowtime/suburb/hce/pistols/plasmapistol_ce.mdl"
SWEP.WorldModel = "models/snowysnowtime/suburb/hce/pistols/wm_plasmapistol_ce.mdl"
SWEP.ViewModelFOV = 70

SWEP.Range =  700 -- in METRES
SWEP.Penetration = 0
SWEP.DamageType = DMG_BULLET
SWEP.MuzzleVelocity = 126 -- projectile or phys bullet muzzle velocity -- IN M/S
SWEP.NeverPhysBullet = true

SWEP.Recoil = 0
SWEP.RecoilSide = 0
SWEP.RecoilPunch = 1
SWEP.MaxRecoilBlowback = 1
SWEP.RecoilPunchBack = 2
SWEP.VisualRecoilMult = 24
SWEP.Damage = 12
SWEP.DamageMin = 12
SWEP.AccuracyMOA = 10
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
SWEP.MeleeTime = 1

SWEP.TracerNum = 1 -- tracer every X
SWEP.Tracer 	= "effect_arc9_halo3_tracer_plasmapistol"
SWEP.MuzzleFlashColor = Color(60, 255, 80)
SWEP.ImpactEffect = "effect_arc9_halo_ce_impact_pp"

-- Funnymode activated
-- SWEP.TriggerDelay = true
-- SWEP.FUCK = 0
-- function SWEP:GetTriggerDelta()
    -- local shouldHold = self:GetOwner():KeyDown(IN_ATTACK) and (!self.Sprinted or self:GetState() != ArcCW.STATE_SPRINT)

    -- if self.LastTriggerTime == -1 then return 0 end
    -- if self.FUCK > 0 then return 1 end
    -- return math.Clamp((CurTime() - self.LastTriggerTime) / self.LastTriggerDuration, 0, 0.99)
-- end
-- function SWEP:DoTriggerDelay()
    -- local shouldHold = self:GetOwner():KeyDown(IN_ATTACK) and (!self.Sprinted or self:GetState() != ArcCW.STATE_SPRINT) and !self:GetReloading() and !self:GetDischarging()

    -- self.FUCK = 0
    -- if self.LastTriggerTime == -1 then
        -- if !shouldHold then
            -- self.LastTriggerTime = 0 -- Good to fire again
            -- self.LastTriggerDuration = 0
        -- end
        -- return
    -- end

    -- local readyq = math.Clamp(( CurTime() - self.LastTriggerTime ) / self.LastTriggerDuration, 0, 1 ) == 1

    -- if self:GetBurstCount() > 0 and self:GetCurrentFiremode().Mode == 1 then
        -- self.FUCK = 0
        -- self.LastTriggerTime = -1 -- Cannot fire again until trigger released
        -- self.LastTriggerDuration = 0
    -- elseif self.LastTriggerTime > 0 and !shouldHold then
        -- self.FUCK = 1
        -- self:StopSound("hce/ppistol_charge.wav")
        -- if readyq then
            -- self.FUCK = 2
        -- end
        -- self.LastTriggerTime = 0
        -- self.LastTriggerDuration = 0
        -- self:PrimaryAttack()
        -- if readyq then
            -- self:SetDischarging(true)
            -- self:SetHeatLevel(1)
        -- end
        -- return
    -- elseif self:GetNextPrimaryFire() < CurTime() and !self:GetReloading() and self.LastTriggerTime == 0 and shouldHold then
        -- self.FUCK = 0
        -- self:EmitSound( "hce/ppistol_charge.wav", 65, nil, nil, CHAN_WEAPON )
        -- self.LastTriggerTime = CurTime()
        -- self.LastTriggerDuration = self.Charge_Time
    -- end

    -- if readyq then
        -- local anim = self:SelectAnimation("trigger")
        -- self:PlayAnimation(anim, 1, true, 0)
    -- end
-- end
-- SWEP.Hook_SelectFireAnimation = function(wep, anim)
    -- if wep.FUCK == 2 then return "fire_overcharged" end
-- end
-- SWEP.Hook_GetShootSound = function(wep, fsound)
    -- if wep.FUCK == 2 then return "hce/ppistol_chargefire.wav" end
-- end

-- Fesiug's Plasma subbase
SWEP.ArcCW_Halo_Heat    = true
SWEP.ArcCW_Halo_Battery = true
SWEP.ArcCW_Halo_Accel   = false

SWEP.Heat_Accel         = 0.16
SWEP.Heat_Decel         = 0.65

SWEP.BatteryConsumption = 0.002

SWEP.Charge_Time        = 0.6
SWEP.Charge_Mult        = 45

SWEP.Misfire_Threshold  = 0.9
SWEP.Misfire_Chance     = 0.5

SWEP.Delay_Accel        = 1.8
SWEP.Delay_Decel        = 0.25
SWEP.Delay_Min      = 60 / 420
SWEP.Delay_Max      = 60 / 600

SWEP.Delay = 60 / 9999 -- 60 / RPM.
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

SWEP.ShootSound = Sound("suburb.pr.fire")
SWEP.ShootSoundSilenced = nil
SWEP.DistantShootSound = "h3_pr_lod"

SWEP.MuzzleEffect = "arc9ce_halo_ce_muzzle_plasma_pistol"
SWEP.ShellModel = "models/shells/shell_338mag.mdl"
SWEP.ShellPitch = 80
SWEP.ShellScale = 1.5

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

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
SWEP.HoldtypeActive = "pistol"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_REVOLVER

SWEP.ActivePos = Vector(0, 0.2, 1)
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
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		SoundTable = {
			-- The Main Shit
            {
                s = "suburb.pp.oh", -- sound; can be string or table
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
		SoundTable = {
			-- The Main Shit
            {
                s = "suburb.pp.oh_exit", -- sound; can be string or table
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