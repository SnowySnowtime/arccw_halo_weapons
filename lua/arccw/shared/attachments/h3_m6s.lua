att.PrintName = "M6C/SOCOM"
att.Icon = Material("snowysnowtime/2k/ico/h3/smg_sil.png")
att.Description = "Converts the M6C to an M6C/SOCOM."
att.Desc_Pros = {
	"Can fire underwater",
	"'Hud Linked Optics', making it superb for aiming",
	"	while gunning.",
}
att.Desc_Cons = {
	"Cannot use other scope or muzzle attachments.",
	"	Suppressor increases barrel length",
	"	making it harder to fire up close.",
}
att.Slot = "override_s"
att.Silencer = true

att.AutoStats = false
att.Mult_Recoil = 0.75
att.Mult_AccuracyMOA = 0.75
att.Mult_HipDispersion = 100
att.Mult_SightsDispersion = 0
att.Add_BarrelLength = 10
att.Override_CanFireUnderwater = true
att.HolosightNoFlare = true
att.Override_MuzzleEffect = "astw2_halo_3_muzzle_SMG_ODST"
att.Override_MuzzleEffectAttachment = "1"
att.Model = "models/snowysnowtime/smg_sight.mdl"
att.HolosightPiece = "models/snowysnowtime/smg_sight.mdl"
att.AdditionalSights = {
	{
		Pos = Vector(-3, -100, 0),
		Ang = Angle(0, -0.95, 0),
		GlobalPos = Vector(0, 0, 0),
		GlobalAng = Angle(0, 0, 0),
		Magnification = 2.5,
		IgnoreExtra = false,
		CrosshairInSights = false,
        SwitchToSound = "h3_zoomin",
        SwitchFromSound = "h3_zoomout",
	}
}

att.Mult_SightTime = 1

att.AttachSound = "attch/snow/halo/h3/x_button.wav"
att.DetachSound = "attch/snow/halo/h3/b_button.wav"

local ScopeTexture	= Material("hud/scopes/m6s_scope")
local proscopesize		= 137
local bitchYouDontEvenKnowUs = 1
--[[
		How the shit?
	1: Halo style (Immediately turn off, no zooming in/out scale)
	2: From out
	3: From inside
]]
local mwc				 = 1
									-- 1 is yes, 2 is yes invert, 0 is no

att.Hook_DrawHUD = function(wep)
	-- Don't draw if we aren't in sights
	local Howtshit = bitchYouDontEvenKnowUs
	local scopesize = proscopesize

	if Howtshit == 1 then
		if wep:GetState() != ArcCW.STATE_SIGHTS then return end
		scopesize = ScreenScale(proscopesize)
	elseif Howtshit == 2 then
		if wep:GetSightDelta() == 1 then return end
		scopesize = math.ceil(ScreenScale(proscopesize / (1-wep:GetSightDelta())))
	elseif Howtshit == 3 then
		if wep:GetSightDelta() == 1 then return end
		scopesize = math.ceil(ScreenScale(proscopesize * (1-wep:GetSightDelta())))
	end

	-- Draw textured 2D scope
	local sightcolor = {
		r = 100,--GetConVar("arccw_scope_r"):GetInt(),
		g = 150,--GetConVar("arccw_scope_g"):GetInt(),
		b = 255,--GetConVar("arccw_scope_b"):GetInt(),
	}

	local ax, ay
	local mult = 1

	if mwc == 1 or mwc == 2 then
		local pos = EyePos()
		local ang = EyeAngles() - wep:GetOurViewPunchAngles()
		cam.Start3D()
			local sp = (pos + (ang:Forward() * 3200)):ToScreen()
		cam.End3D()
		ax, ay = ((ScrW()/2)-sp.x), ((ScrH()/2)-sp.y)
	else
		ax, ay = 0, 0
	end

	if mwc == 2 then
		ax = -ax
		ay = -ay
	end

	local icns = {
		tl = (ScrW()/2)-(scopesize/2)-ax,	--	Top Left
		tr = (ScrW()/2)+(scopesize/2)-ax,	--	Top Right
		bl = (ScrH()/2)-(scopesize/2)-ay,	--	Bottom Left
		br = (ScrH()/2)+(scopesize/2)-ay,	--	Bottom Right
	}
	surface.SetDrawColor(sightcolor.r, sightcolor.g, sightcolor.b, 255)
	surface.SetMaterial(ScopeTexture)
	surface.DrawTexturedRect(icns.tl, icns.bl, scopesize, scopesize)

	-- Draw surrounding
	surface.SetDrawColor(0, 0, 0, 136)
	// Left
	surface.DrawRect(0, 0, icns.tl, ScrH())
	// Right
	surface.DrawRect(icns.tr, 0, ScrW(), ScrH())
	
	// Top
	surface.DrawRect(icns.tl, 0, scopesize, icns.bl)
	// Bottom
	surface.DrawRect(icns.tl, icns.br, scopesize, ScrH())
end

att.ActivateElements = {"magnum"}
att.GivesFlags = {"halo_m6s"}
att.SOCOM = true