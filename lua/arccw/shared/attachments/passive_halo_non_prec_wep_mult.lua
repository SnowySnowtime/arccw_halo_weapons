att.PrintName = "non_prec lol"
att.Icon = Material("entities/tfa_hce_snow_objectiveflag.png", "smooth mips")
att.Description = "Further triples headshot damage."
att.Desc_Pros = {
    "pro.headshotdamage"
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = "halo_passive"


att.Hook_BulletHit = function(wep, data)
    if CLIENT then return end

    if data.tr.HitGroup == HITGROUP_HEAD then
        data.damage = data.damage * 0.5
	elseif data.tr.HitGroup == HITGROUP_LEFTARM or data.tr.HitGroup == HITGROUP_RIGHTARM or data.tr.HitGroup == HITGROUP_LEFTLEG or data.tr.HitGroup == HITGROUP_RIGHTLEG then
		data.damage = data.damage * 4
    end
end