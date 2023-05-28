att.PrintName = "Black Eye Skull"
att.Icon = Material("entities/halo_skulls_blackeye.png", "smooth mips")
att.Description = "Bash your way to good health."
att.Desc_Pros = {
    "+ Health on bash",
    "+ Enables Lunging",
}
att.Desc_Cons = {
}
att.Slot = "skull_halo"
att.DroppedModel = "models/halomodels/haloce/w_halo_skull.mdl"

att.NotForNPC = true
att.NoRandom =  true
att.Spawnable = false

att.AutoStats = true
att.Mult_MeleeDamage = 1.35
att.Mult_MeleeTime = 1.5

att.Override_Lunge = true
att.Add_LungeLength = 0
att.Mult_LungeLength = 2
--this is an awful amalgamation of the vampire perk and street justice.
att.Hook_PostBash = function(wep, data)
    local ent = data.tr.Entity
    local dir = data.tr.Normal:GetNormalized()

    if IsValid(ent) then
        if (ent.ArcCW_StreetJustice or 0) < CurTime() and (ent:IsNPC() or ent:IsPlayer()) then
			wep.Owner:SetHealth(math.Clamp(wep.Owner:Health() + (30), 0, wep.Owner:GetMaxHealth()))
			end
    end
end

att.AttachSound = "halo/skull_equip.wav"
att.DetachSound = "halo/back_button.wav"