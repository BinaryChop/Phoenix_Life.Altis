
/* author: Rayner von der Lampe @ Phoenix Multigaming  @http://phoenix-multigaming.de
*
* fn_marker_on_map.sqf
*
* Please feel free to use and modify it, but remember to credit the author.
*
*/


 _chop = 
[ 
		"chop_shop_1",
		"chop_shop_2",
		"chop_shop_3",
		"chop_shop_4"
];
_cop = 
[
		"gm",
		"gf",
		"gm_1",
		"gm_2",
		"turtle_1_name",
		"turtle_1_name_1",
		"turtle_1_name_2",
		"turtle_1",
		"turtle_2",
		"turtle_3",
		"heroin_1",
		"heroin_p",
		"uran_1",
		"uranp_1",
		"schwarzmarkt_trader",
		"dd",
		"Dealer_1",
		"Dealer_2",
		"Dealer_3",
		"cocaine_1",
		"cocaine_processing",
		"weed_1",
		"lsd_1",
		"meth_1",
		"lsd_1",
		"Weed_p_1",
		"Dealer_1_3",
		"dd_1",
		"turle_dealer_2",
		"turle_dealer",
		"turle_dealer_1",
		"sb_4"
];
_food1 = [
		"salt",
		"oil_trader_1",
		"wheat_1",
		"food_1_1",
		"food_1_2",
		"food_1_3",
		"food_1_4",
		"food_1_5",
		"food_1_6",
		"food_1_7",
		"food_1_8",
		"food_1_9",
		"food_1_11",
		"food_1_11",
		"rc_3"
		
];
_food2 = 
[
	"food_2_1",
	"food_2_2",
	"food_2_3",
	"food_2_4",
	"food_1_10",
	"rc_3",
	"salt",
	"salt_1",
	"oil_trader_1",
	"wheat_1",
	"food_1_1",
	"food_1_2",
	"food_1_3",
	"food_1_4",
	"food_1_5",
	"food_1_6",
	"food_1_7",
	"food_1_8",
	"food_1_9",
	"food_1_11",
	"food_1_12",
	"food_3"
	
];
_food3 = 
[	
"food_2_1",
	"food_2_2",
	"food_2_3",
	"food_2_4",
	"food_1_10",
	"rc_3",
	"salt",
	"salt_1",
	"oil_trader_1",
	"wheat_1",
	"food_1_1",
	"food_1_2",
	"food_1_3",
	"food_1_4",
	"food_1_5",
	"food_1_6",
	"food_1_7",
	"food_1_8",
	"food_1_9",
	"food_1_11",
	"food_1_11",
	"turle_dealer_2",
	"turle_dealer",
	"turle_dealer_1",
	"turtle_3",
	"turtle_1_name_2",
	"turtle_2",
	"turtle_1_name_1",
	"turtle_1",
	"turtle_1_name",
	"food_3"
	
];
_san = 
[	
	"sand_1",
	"oil_trader_3"
];
_hlz =
[
		"holzv",
		"holzver",
		"wald",
		"build_1",
		"rock_proc",
		"rock_proc_1",
		"rock_proc_2"
];
_lowin = 
[
		"lowin_2",
		"lowin_3",
		"lowin_4",
		"lowin_1",
		"oil_trader_4",
		"OilP"
];
_midin = 
[
		"midin_1",
		"lowin_2",
		"lowin_3",
		"lowin_4",
		"lowin_1",
		"oil_trader_4",
		"OilP"
];
_highin = 
[
		"midin_1",
		"lowin_2",
		"lowin_3",
		"lowin_4",
		"lowin_1",
		"oil_trader_4",
		"OilP",
		"uranp_1"
];
_chem1 = 
[
		"OilP",
		"oil_1",
		"oil_2",
		"chem_2"
];
_chem2 = 
[
		"chem_1",
		"OilP",
		"oil_1",
		"oil_2",
		"chem_2"
];
_chem3 = 
[
		"chem_1",
		"OilP",
		"oil_1",
		"oil_2",
		"chem_2"
];
_edel1 = 
[
		"saf_1",
		"oil_trader_2",
		"edel_1"
];
_edel2 = 
[
		"diamond_1",
		"saf_1",
		"oil_trader_2",
		"edel_1"
];
_geo1 = 
[
		"sb_1",
		"sb_2",
		"sb_3",
		"sand_1",
		"salt_1",
		"oil_trader_1"
];//Geologie Lehrling
_geo2 = 
[
		"sb_1",
		"sb_2",
		"sb_3",
		"sb_5",
		"sb_6",
		"sand_1",
		"salt_1"
];//Geologie Geselle
_geo3 = 
[
		"sb_1",
		"sb_2",
		"sb_3",
		"sb_4",
		"sb_5",
		"sb_6",
		"sb_7",
		"sb_8",
		"sand_1",
		"oil_1",
		"oil_2",
		"salt_1"
];//Geologie Meister
//illegal

_ura = 
[
		"uranp_1",
		"schwarzmarkt_trader",
		"sb_4"
];
_reb = 
[
		"gujj_1_1",
		"Rebelop_2_1_2_1_1",
		"Rebelop_2_1_1_1_1",
		"ef",
		"gf",
		"gm",
		"Rebelop_2_1_1_1_2",
		"gujj_1_2",
		"gm_1",
		"Rebelop_2_1_2_1_2",
		"Rebelop",
		"jz",
		"Rebelop_2_1_1_1",
		"gm_2",
		"Rebelop_2_1_2_1",
		"gujj_1"
];
_drugs3 = 
[
		"cocaine_processing",
		"cocaine_1",
		"heroin_1",
		"heroin_p",
		"dd",
		"weed_p_1",
		"weed_1",
		"lsd_1",
		"dd_1",
		"Dealer_1",
		"Dealer_2",
		"Dealer_3"
];
_drugs1 = 
[
		"weed_p_1",
		"weed_1",
		"Dealer_1",
		"Dealer_2",
		"Dealer_3"

];
_drugs2 = 
[
		"cocaine_processing",
		"cocaine_1",
		"heroin_1",
		"heroin_p",
		"dd",
		"weed_p_1",
		"weed_1",
		"lsd_1",
		"dd_1",
		"Dealer_1",
		"Dealer_2",
		"Dealer_3"

];
_wp = 
[	
		"weapon_1"
]
;
_dealer = 
[	
		"Dealer_1",
		"Dealer_2",
		"Dealer_3"
];
_schmuck =
["schmuck_1"
];

_all =_dealer
+_drugs1
+_drugs2
+_drugs3
+_reb
+_ura
+_geo1
+_geo2
+_geo3
+_edel1
+_edel2
+_chem1
+_chem2
+_lowin
+_midin
+_hlz
+_san
+_food1
+_food2
+_food3
+_schmuck
+_wp
;
 /*if (playerSide == civilian) then
 {
{_x setMarkerAlphaLocal 0;} foreach _all;};
 if (playerSide == west) then
 {
	{
	deleteMarkerLocal _x; 
	} forEach _cop +_chop +_reb;
 };
if (playerSide == civilian && license_civ_lowin) then
 {
	{ _x setMarkerAlphaLocal 1;
	} foreach _lowin;
 };
if (playerSide == civilian && license_civ_midin) then
 {

	{_x setMarkerAlphaLocal 1;
	}foreach _midin;
 };
 if (playerSide == civilian && license_civ_highin) then
 {

	{_x setMarkerAlphaLocal 1;
	}foreach _highin;
 };
 if (playerSide == civilian && license_civ_edel1) then
 {
	{ _x setMarkerAlphaLocal 1;
	} foreach _edel1;
 };
 if (playerSide == civilian && license_civ_edel2) then
 {
	{ _x setMarkerAlphaLocal 1;
	} foreach _edel2;
 };
if (playerSide == civilian && license_civ_geo1) then
{

	{_x setMarkerAlphaLocal 1;
	} foreach _geo1;
};
if (playerSide == civilian && license_civ_geo2) then
{

	{_x setMarkerAlphaLocal 1;
	} foreach _geo2;
};
if (playerSide == civilian && license_civ_geo3) then
{

	{_x setMarkerAlphaLocal 1;
	} foreach _geo3;
};
if (playerSide == civilian && license_civ_food1) then
{

	{_x setMarkerAlphaLocal 1;
	} foreach _food1;
};
if (playerSide == civilian && license_civ_food2) then
{

	{_x setMarkerAlphaLocal 1;
	} foreach _food2;
};
if (playerSide == civilian && license_civ_food3) then
{

	{_x setMarkerAlphaLocal 1;
	} foreach _food3;
};
if (playerSide == civilian && license_civ_chem1) then
{

	{_x setMarkerAlphaLocal 1;
	} foreach _chem1;
};
if (playerSide == civilian && license_civ_chem2) then
{

	{_x setMarkerAlphaLocal 1;
	} foreach _chem2;
};
if (playerSide == civilian && license_civ_chem3) then
{

	{_x setMarkerAlphaLocal 1;
	} foreach _chem3;
};
if (playerSide == civilian && license_civ_build) then
{

	{_x setMarkerAlphaLocal 1;
	} foreach _hlz;
};
if (playerSide == civilian && license_civ_rebel) then
{

	{_x setMarkerAlphaLocal 1;
	} foreach _reb;
};
if (playerSide == civilian && license_civ_drug_1) then
{

	{_x setMarkerAlphaLocal 1;
	} foreach _drugs1;
};
if (playerSide == civilian && license_civ_drug_2) then
{

	{_x setMarkerAlphaLocal 1;
	} foreach _drugs2;
};
if (playerSide == civilian && license_civ_drug_3) then
{

	{_x setMarkerAlphaLocal 1;
	} foreach _drugs3;
};
if (playerSide == civilian && license_civ_schmuck1 || license_civ_schmuck2) then
{

	{_x setMarkerAlphaLocal 1;
	} foreach _schmuck;
};
if (playerSide == civilian && license_civ_wp) then
{

	{_x setMarkerAlphaLocal 1;
	} foreach _wp;
};
/*