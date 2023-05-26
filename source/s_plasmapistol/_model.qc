$modelname "plasmapistol_ce.mdl"
$include "_bonemerge.qci"

$bodygroup "studio"
{
	studio "model.smd"
}

$bodygroup "arms"
{
	blank
	studio "cyborg_arms.smd"
}

$cdmaterials "snowysnowtime/hce/pistols/pp"

$surfaceprop "default"

$contents "solid"

$illumposition -2.073 -5.096 -10.058

$attachment "muzzle" "frame gun" 20 -0.3 -3 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox -10.175 -15.883 -17.155 20.363 11.732 -2.96

$sectionframes 30 132

$animation neutral "anims\first-person overcharged-jitter.smd" frames 0 0

$animation "overcharge_jitter_charged" "anims/first-person overcharged.smd" fps 30 presubtract "neutral" 0

$animation "overcharge_jitter_start" "anims/first-person overcharging.smd" fps 30 presubtract "neutral" 0

$sequence "ref" {
	"anims\ref.smd"
	fadein 0.05
	fadeout 0.2
	node "0"
	rotate -90
	fps 30
	loop 
}

$sequence "overcharged_jitter" {
	"overcharge_jitter_charged"
	snap
	hidden
	predelta
	fps 45
}

$sequence "overcharging_jitter" {
	"overcharge_jitter_start"
	snap
	hidden
	predelta
	fps 45
}

$sequence "overcharge_start" {
	"anims\first-person overcharging.smd"
	fadein 0.05
	fadeout 0.2
	addlayer "overcharging_jitter"
	node "0"
	rotate -90
	fps 30
}

$sequence "overcharged" {
	"anims\first-person overcharged-jitter.smd"
	fadein 0.05
	fadeout 0.2
	addlayer "overcharged_jitter"
	node "0"
	rotate -90
	fps 30
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
	{ event 5004 2 "suburb.pp.fidget" }
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

$sequence "misfire" {
	"anims\first-person misfire-1.smd"
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
	{ event 5004 5 "suburb.pp.draw" }
	fadein 0.05
	fadeout 0.2
	node "0"
	rotate -90
	snap
	fps 30
}

$sequence "oh_start" {
	"anims\first-person overheating.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	node "0"
	rotate -90
	fps 30
}

$sequence "fire_overcharged" {
	"anims\first-person fire-2.smd"
	fadein 0.05
	fadeout 0.2
	node "0"
	rotate -90
	fps 30
}

$sequence "oh_idle" {
	"anims\first-person overheated.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	node "0"
	rotate -90
	fps 30
}

$sequence "oh_exit" {
	"anims\first-person o-h-exit.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	node "0"
	rotate -90
	fps 30
}

$sequence "melee" {
	"anims\first-person melee.smd"
	activity "ACT_VM_HITCENTER" 1
	{ event 5004 0 "suburb.pp.melee" }
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

$include "_phy.qci"