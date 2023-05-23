hook.Add( "PopulateToolMenu", "Suburb_HCE_Options", function()
    spawnmenu.AddToolMenuOption( "Options", "ArcCW", "Suburb_HCE_Options", "Halo CE+", "", "", Suburb_HCE_Options)
end )

function Suburb_HCE_Options( CPanel )

    CPanel:AddControl("Header", {Description = "All options below are serverside and require a restart to apply."})
    CPanel:AddControl("Header", {Description = "Please note that this is entirely separate from the original (and defunct) addon prior."})
    CPanel:AddControl("Header", {Description = ""})

    CPanel:AddControl("Checkbox", {Label = "Disallow Universal Attachments on Halo Weapons", Command = "arccw_ce_attch_univ" })
	
	CPanel:AddControl("Header", {Description = "Balancing."})
	CPanel:AddControl("Label", {Text = "This controls how the Halo weaponry are balanced."})
	CPanel:AddControl("Slider", {Label = "How do we balance?", Command = "arccw_ce_bal", min = 0, max = 2 })
	CPanel:AddControl("Label", {Text = "0 is HaloCW, the current balance philosophy. A mesh of ArcCW, and a healthy dose of Halo feeling."})
	CPanel:AddControl("Label", {Text = "1 is for the Halo Purists, and the default balance. The weapons serve to function like they should in their respective games."})
	CPanel:AddControl("Label", {Text = "2 is for the ArcCW Purists, or for deathmatch servers. This will balance the weapons to behave similarly to other weaponry (CSS weapons are used as a standard)."})
	CPanel:AddControl("Label", {Text = "Do note that this does not touch necessary things such as fire rate or animation speeds. This primarily affects recoil, spread, and damage."})
end