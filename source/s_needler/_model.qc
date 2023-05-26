$modelname "needler_ce.mdl"
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

$cdmaterials "snowysnowtime/hce/pistols/needler"

$surfaceprop "default"

$contents "solid"

$illumposition -2.073 -5.096 -10.058

$attachment "muzzle" "frame body" 10 0 1 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox -10.175 -15.883 -17.155 20.363 11.732 -2.96

$sectionframes 30 132

$poseparameter "ammo" 0 21 loop 0

$weightlist "ammo" {
	 "frame eneedle13" 1
	 "frame needle01" 1
	 "frame needle02" 1
	 "frame needle03" 1
	 "frame needle04" 1
	 "frame needle05" 1
	 "frame needle06" 1
	 "frame needle07" 1
	 "frame needle08" 1
	 "frame needle09" 1
	 "frame needle10" 1
	 "frame needle11" 1
	 "frame needle12" 1
	 "frame needle13" 1
	 "frame needle14" 1
	 "frame needle15" 1
	 "frame needle16" 1
}

$animation neutral "anims/ref.smd" frames 0 0

$animation "ammunition1" "anims/ammo/first-person ammunition1.smd" frames 0 0 weightlist "ammo"
$animation "ammunition2" "anims/ammo/first-person ammunition2.smd" frames 0 0 weightlist "ammo"
$animation "ammunition3" "anims/ammo/first-person ammunition3.smd" frames 0 0 weightlist "ammo"
$animation "ammunition4" "anims/ammo/first-person ammunition4.smd" frames 0 0 weightlist "ammo"
$animation "ammunition5" "anims/ammo/first-person ammunition5.smd" frames 0 0 weightlist "ammo"
$animation "ammunition6" "anims/ammo/first-person ammunition6.smd" frames 0 0 weightlist "ammo"
$animation "ammunition7" "anims/ammo/first-person ammunition7.smd" frames 0 0 weightlist "ammo"
$animation "ammunition8" "anims/ammo/first-person ammunition8.smd" frames 0 0 weightlist "ammo"
$animation "ammunition9" "anims/ammo/first-person ammunition9.smd" frames 0 0 weightlist "ammo"
$animation "ammunition10" "anims/ammo/first-person ammunition10.smd" frames 0 0 weightlist "ammo"
$animation "ammunition11" "anims/ammo/first-person ammunition11.smd" frames 0 0 weightlist "ammo"
$animation "ammunition12" "anims/ammo/first-person ammunition12.smd" frames 0 0 weightlist "ammo"
$animation "ammunition13" "anims/ammo/first-person ammunition13.smd" frames 0 0 weightlist "ammo"
$animation "ammunition14" "anims/ammo/first-person ammunition14.smd" frames 0 0 weightlist "ammo"
$animation "ammunition15" "anims/ammo/first-person ammunition15.smd" frames 0 0 weightlist "ammo"
$animation "ammunition16" "anims/ammo/first-person ammunition16.smd" frames 0 0 weightlist "ammo"
$animation "ammunition17" "anims/ammo/first-person ammunition17.smd" frames 0 0 weightlist "ammo"
$animation "ammunition18" "anims/ammo/first-person ammunition18.smd" frames 0 0 weightlist "ammo"
$animation "ammunition19" "anims/ammo/first-person ammunition19.smd" frames 0 0 weightlist "ammo"
$animation "ammunition20" "anims/ammo/first-person ammunition20.smd" frames 0 0 weightlist "ammo"
$animation "ammunition21" "anims/ammo/first-person ammunition21.smd" frames 0 0 weightlist "ammo"

$sequence "ammo" {
	"ammunition20"
	"ammunition1"
	"ammunition2"
	"ammunition3"
	"ammunition4"
	"ammunition5"
	"ammunition6"
	"ammunition7"
	"ammunition8"
	"ammunition9"
	"ammunition10"
	"ammunition11"
	"ammunition12"
	"ammunition13"
	"ammunition14"
	"ammunition15"
	"ammunition16"
	"ammunition17"
	"ammunition18"
	"ammunition19"
	"ammunition21"
	autoplay
	blend "ammo" 0 21
	blendwidth 21
	delta
	snap
	hidden
}

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
	{ event 5004 0 "suburb.ndlr.fidget" }
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
	{ event 5004 0 "suburb.ndlr.draw" }
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

$sequence "melee" {
	"anims\first-person melee.smd"
	activity "ACT_VM_HITCENTER" 1
	{ event 5004 0 "suburb.ndlr.melee" }
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