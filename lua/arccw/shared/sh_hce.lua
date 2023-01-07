CreateConVar("arccw_hce_bal", 0, FCVAR_ARCHIVE + FCVAR_REPLICATED, "Tweaks the balancing for the Halo Weapons. See the options page under Options > ArcCW > Halo for more information.", 0, 2)

game.AddAmmoType({
    name = "arccwhce_plasmabattery"
})

if CLIENT then
    language.Add("arccwhce_plasmabattery", "Plasma Battery")
    language.Add("arccwhce_plasmabattery_ammo", "Plasma Battery")
end