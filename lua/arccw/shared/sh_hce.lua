CreateConVar("arccw_ce_attch_univ", 0, FCVAR_ARCHIVE + FCVAR_REPLICATED, "Should Halo weapons be able to equip non-cosmetic attachments?", 0, 1)
CreateConVar("arccw_ce_bal", 1, FCVAR_ARCHIVE + FCVAR_REPLICATED, "Tweaks the balancing for the Halo Weapons. See the options page under Options > ArcCW > Halo for more information.", 0, 2)

game.AddAmmoType({
    name = "arccwhce_plasmabattery"
})

if CLIENT then
    language.Add("arccwhce_plasmabattery", "Plasma Battery")
    language.Add("arccwhce_plasmabattery_ammo", "Plasma Battery")
end