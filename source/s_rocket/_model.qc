$modelname "rocket_ce.mdl"
$include _bonemerge.qci

$bodygroup "studio"
{
	studio "model.smd"
}

$bodygroup "arms"
{
	blank
	studio "cyborg_arms.smd"
}

$cdmaterials "snowysnowtime/hce/support/rocket"

$surfaceprop "default"

$contents "solid"

$illumposition -2.073 -5.096 -10.058

$attachment "muzzle" "frame tubes" 18 0 -1 rotate 0 0 0
$attachment "1" "frame gun" 0 0 3.5 rotate 0 90 -180

$cbox 0 0 0 0 0 0

$bbox -10.175 -15.883 -17.155 20.363 11.732 -2.96

$sectionframes 30 132

$sequence "ref" {
	"anims\ref.smd"
	fadein 0.05
	fadeout 0.2
	node "0"
	rotate -90
	fps 30
	loop
}

$sequence "idle" {
	"anims\first-person idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.05
	fadeout 0.2
	node "0"
	rotate -90
	fps 30
	loop
}

$sequence "fidget" {
	"anims\first-person posing.smd"
	activity "ACT_VM_FIDGET" 1
	{ event 5004 0 "suburb.cerl.fidget" }
	fadein 0.05
	fadeout 0.2
	node "0"
	rotate -90
	fps 30
}

$sequence "fire" {
	"anims\first-person fire-1.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "" }
	fadein 0.05
	fadeout 0.2
	node "2"
	rotate -90
	fps 30
}

$sequence "draw" {
	"anims\first-person ready.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 0 "suburb.cerl.draw" }
	fadein 0.05
	fadeout 0.2
	node "0"
	rotate -90
	snap
	fps 30
}

$sequence "reload" {
	"anims\first-person reload-full.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.05
	fadeout 0.2
	node "0"
	rotate -90
	fps 30
}

$sequence "reload_empty" {
	"anims\first-person reload-empty.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1
	fadein 0.05
	fadeout 0.2
	node "0"
	rotate -90
	fps 30
}

$sequence "melee" {
	"anims\first-person melee.smd"
	activity "ACT_VM_HITCENTER" 1
	{ event 5004 0 "suburb.cerl.melee" }
	fadein 0.05
	fadeout 0.2
	rotate -90
	fps 30
}

$sequence "throw_grenade" {
	"anims\first-person throw-grenade.smd"
	activity "ACT_VM_SECONDARYATTACK" 1
	fadein 0.05
	fadeout 0.3
	rotate -90
	fps 30
}

$sequence "spin_start" {
	"anims\spin_start.smd"
	activity "ACT_VM_FIDGET" 1
	{ event 5004 0 "suburb.cerl.spin_start" }
	fadein 0.2
	fadeout 0.2
	node "0"
	fps 30
}

$sequence "spin" {
	"anims\spin.smd"
	activity "ACT_VM_IDLE" 1
	{ event 5004 0 "suburb.cerl.spin" }
	fadein 0.2
	fadeout 0.2
	node "0"
	fps 30
	loop
}

$sequence "spin_end" {
	"anims\spin_end.smd"
	activity "ACT_VM_FIDGET" 1
	{ event 5004 0 "suburb.cerl.spin_end" }
	fadein 0.2
	fadeout 0.2
	node "0"
	fps 30
}

$include "_phy.qci"