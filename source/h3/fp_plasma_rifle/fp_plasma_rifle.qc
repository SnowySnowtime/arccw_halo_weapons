$modelname "fp_plasmarifle.mdl"

$bodygroup "body"
{
	studio "battery.smd"
}
$bodygroup "body1"
{
	studio "battery_luminous.smd"
}
$bodygroup "br"
{
	studio "plasmarifle.smd"
}
$bodygroup "br1"
{
	studio "plasmarifle_luminous.smd"
}
$bodygroup "h"
{
	studio "gauge.smd"
}
$include "bones.qci"

$surfaceprop "default"

$contents "solid"

$illumposition 0 0 0

$cdmaterials "snowysnowtime/h3/rifles/plasmarifle"

$texturegroup "skinfamilies"
{
    { "shell" }
    { "shell_brute" }
}

$cbox 0 0 0 0 0 0

$bbox -19.114 -19.847 -47.532 41.111 68.876 20.054

$attachment "muzzle1" "gun" 9.25 0.00 1.25 rotate 0 0 0	
$attachment "muzzle2" "gun" 9.25 0.00 -1.25 rotate 0 0 0

$poseparameter "move_x" -1 1 loop 0

$animation "idle" "anims/first_person idle.smd" fps 30 rotate -90

$sequence "idle_raw" {
	"anims\first_person idle.smd"
	activity "ACT_VM_IACT_VM_PULLBACK_LOW" 1
	fadein 0.1
	fadeout 0
	rotate -90
	fps 30
}

$sequence "idle_1" {
	"idle"
	activity "ACT_VM_IDLE" 1
	fadein 0.1
	fadeout 0
	rotate -90
	fps 30
}

$sequence "fire_1 var1" {
	"anims\first_person fire_1 var0.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	fadein 0
	fadeout 0
	node "1"
	rotate -90
	fps 30
}

$sequence "fire_1 var2" {
	"anims\first_person fire_1 var1.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	fadein 0
	fadeout 0
	node "1"
	rotate -90
	fps 30
}

$sequence "fire_1 var3" {
	"anims\first_person fire_1 var2.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	fadein 0
	fadeout 0
	node "1"
	rotate -90
	fps 30
}

$sequence "oh_start" {
	"anims\first_person overheating.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	node "0"
	rotate -90
	fps 30
}

$sequence "oh_idle" {
	"anims\first_person overheated.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	node "0"
	rotate -90
	fps 30
}

$sequence "oh_exit" {
	"anims\first_person o_h_exit.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	node "0"
	rotate -90
	fps 30
}

$sequence "ready" {
	"anims\first_person ready.smd"
	activity "ACT_VM_DRAW" 1
	fadein 0.2
	fadeout 0.2
	rotate -90
	fps 30
}

$sequence "put_away" {
	"anims\first_person put_away.smd"
	activity "ACT_VM_HOLSTER" 1
	fadein 0.2
	fadeout 0.2
	rotate -90
	fps 30
}

$sequence "melee_strike_1" {
	"anims\first_person melee_strike_1.smd"
	activity "ACT_VM_HITCENTER" 1
	fadein 0.1
	fadeout 0.2
	rotate -90
	fps 30
}

$sequence "posing var1" {
	"anims\first_person posing var0.smd"
	activity "ACT_VM_FIDGET" 1
	fadein 0.2
	fadeout 0.2
	rotate -90
	fps 30
}

$sequence "posing var2" {
	"anims\first_person posing var1.smd"
	activity "ACT_VM_FIDGET" 1
	fadein 0.2
	fadeout 0.2
	rotate -90
	fps 30
}

$sequence "throw_grenade" {
	"anims\first_person throw_grenade.smd"
	activity "ACT_VM_THROW" 1
	fadein 0.2
	fadeout 0.2
	rotate -90
	fps 30
}

$sequence "throw_equipment" {
	"anims\first_person throw_equipment.smd"
	activity "ACT_VM_PULLPIN" 1
	fadein 0.2
	fadeout 0.2
	rotate -90
	fps 30
}