$modelname "wm_snipperrifle_ce.mdl"
$include _bonemerge.qci

$bodygroup "studio"
{
	studio "wm.smd"
}

$cdmaterials "snowysnowtime/hce/rifles/sniper"

$surfaceprop "default"

$contents "solid"

$illumposition -2.073 -5.096 -10.058

$attachment "muzzle" "frame gun" 46.00 0.00 3 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox -10.175 -15.883 -17.155 20.363 11.732 -2.96

$sectionframes 30 132

$sequence "ref" {
	"anims\ref.smd"
	fadein 0.05
	fadeout 0.2
	node "0"
	rotate -90
	fps 1
	loop
}

$include "_phy.qci"