att.PrintName = "Brute Plasma Rifle"
att.Icon = Material("snowysnowtime/2k/ico/h3/pr_grn.png", "mips" )
att.Description = "A more aggressive variant of the Plasma Rifle with a higher fire rate, consumes battery quicker."
att.Desc_Pros = {
    "  Massively Increased Fire Rate"
}
att.Desc_Cons = {
	"  Consumes Battery% Quicker."
}
att.Slot = "h3pr"

att.Free = true

att.ActivateElements = {"brute"}

att.AttachSound = "attch/snow/halo/h3/x_button.wav"
att.DetachSound = "attch/snow/halo/h3/b_button.wav"

att.Override_MuzzleEffect = "arc9ce_halo_3_muzzle_brute_plasma_rifle"
att.Override_Tracer 	= "effect_arc9_halo3_tracer_plasmarifle_brute"
att.Override_MuzzleFlashColor = Color(255, 20, 0)
att.Override_ImpactEffect = "effect_arc9_halo3_impact_plasmarifle_brute"

att.Override_Delay_Max          = 60 / 900