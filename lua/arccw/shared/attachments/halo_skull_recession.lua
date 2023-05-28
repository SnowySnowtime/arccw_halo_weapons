att.PrintName = "Recession Skull"
att.Icon = Material("entities/halo_skulls_recession.png", "smooth mips")
att.Description = "Enables the power of the Recession Skull*. Each shot is worth two."
att.Desc_Pros = {
}
att.Desc_Cons = {
	" Each bullet is worth two. Make them count."
}
att.Slot = "skull_halo"

att.DroppedModel = "models/halomodels/haloce/w_halo_skull.mdl"

att.NotForNPC = true
att.NoRandom =  true
att.Spawnable = false

att.AutoStats = true

att.Mult_Recoil = 1.5
att.Mult_Damage = 2
att.Mult_DamageMin = 2
att.Mult_DrawTime = 1.75
att.Mult_HolsterTime = 1.75
att.Mult_Precision = 0.85
att.Mult_SightedSpeedMult = 0.80

att.Hook_FireBullets = function(wep, data)
    if CLIENT or not wep.Owner:IsPlayer() then return end

    if math.random() <= 1 then
        wep:SetClip1(wep:Clip1() - 1)
    end
end

att.AttachSound = "halo/skull_equip.wav"
att.DetachSound = "halo/back_button.wav"