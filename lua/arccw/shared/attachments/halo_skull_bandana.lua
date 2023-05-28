att.PrintName = "Bandana Skull"
att.Icon = Material("entities/halo_skulls_bandana.png", "smooth mips")
att.Description = "Enables the power of the Bandana Skull*. Mileage may vary, jackal snipers not included."
att.Desc_Pros = {
    "+ Infinite Ammo"
}
att.Desc_Cons = {
	"  This isnt bottomless clip."
}
att.Slot = "skull_halo"

att.DroppedModel = "models/halomodels/haloce/w_halo_skull.mdl"

att.NotForNPC = true
att.NoRandom =  true
att.Spawnable = false

att.AutoStats = true

att.Mult_Recoil = 2.25
att.Mult_DrawTime = 1.75
att.Mult_HolsterTime = 1.75
att.Mult_AccuracyMOA = 2
--att.Mult_HipDispersion = 1
--att.Mult_SightsDispersion = 1
att.Mult_SightedSpeedMult = 0.80
att.Override_InfiniteAmmo = true

att.AttachSound = "halo/skull_equip.wav"
att.DetachSound = "halo/back_button.wav"