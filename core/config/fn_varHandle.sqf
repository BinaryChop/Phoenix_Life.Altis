/*
	File: fn_varHandle.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master handler for getting a variables name, short name, etc.
*/
private["_var","_mode"];
_var = [_this,0,"",[""]] call BIS_fnc_param;
_mode = [_this,1,-1,[0]] call BIS_fnc_param;
if(_var == "" OR _mode == -1) exitWith {""};

switch (_mode) do
{
	case 0:
	{
		switch (_var) do
		{	


			//Geld
			case "money": {"life_cash"};

			//// Pure
			///////////
			///////////
			///////////
			case "tbacon": {"life_inv_tbacon"};
			case "rabbit": {"life_inv_rabbit"};
			case "donuts": {"life_inv_donuts"};
			case "redgull": {"life_inv_redgull"};
			case "water": {"life_inv_water"};
			case "coffee": {"life_inv_coffee"};
			case "shoki": {"life_inv_shoki"};
			case "luckycookie": {"life_inv_luckycookie"};
			///////////
			///////////
			///////////
			///////////
			///////////
			///////////
			///////////
			///////////
			///////////
			///////////
			///////////
			case "bppickaxet": {"life_inv_bppickaxet"};
			case "pickaxet": {"life_inv_pickaxet"};
			case "bpaxet": {"life_inv_bpaxet"};
			case "axet": {"life_inv_axet"};
			case "axe": {"life_inv_axe"};
			case "spade": {"life_inv_spade"};
			case "hoe": {"life_inv_hoe"};
			///////////
			case "handcuffs": {"life_inv_handcuffs"};
			case "speedtrap": {"life_inv_speedtrap"};
			case "speedtrapdetector": {"life_inv_speedtrapdetector"};
			case "bark": {"life_inv_bark"};
			case "licht": {"life_inv_licht"};
			case "laptop": {"life_inv_laptop"};
			case "pole": {"life_inv_pole"};
			case "defusekit": {"life_inv_defusekit"};
			case "spikeStrip": {"life_inv_spikeStrip"};
			///////////
			///////////
			case "nspray": {"life_inv_nspray"};
			case "reniger": {"life_inv_reniger"};
			case "lwatch": {"life_inv_lwatch"};
			case "woodleg": {"life_inv_woodleg"};
			case "lighter": {"life_inv_lighter"};
			case "calc": {"life_inv_calc"};
			case "robo": {"life_inv_robo"};
			case "robo1": {"life_inv_robo1"};
			case "robo2": {"life_inv_robo2"};
			case "robo3": {"life_inv_robo3"};
			case "robo4": {"life_inv_robo4"};
			case "robo5": {"life_inv_robo5"};
			case "robo6": {"life_inv_robo6"};
			case "dinobone": {"life_inv_dinobone"};
			case "cables": {"life_inv_cables"};
			case "tnt": {"life_inv_tnt"};
			case "bottles": {"life_inv_bottles"};
			case "stotagesmall": {"life_inv_stotagesmall"};
			case "storagebig": {"life_inv_storagebig"};
			case "battery": {"life_inv_battery"};
			case "ladegeraet": {"life_inv_ladegeraet"};
			case "hoergeraet": {"life_inv_hoergeraet"};
			case "nitro": {"life_inv_nitro"};
			case "tracker": {"life_inv_tracker"};
			case "Kabelbinder": {"life_inv_Kabelbinder"};
			case "lockpick": {"life_inv_lockpick"};
			case "pearl": {"life_inv_pearl"};
			///////////
			case "blastingcharge": {"life_inv_blastingcharge"};
			case "boltcutter": {"life_inv_boltcutter"};
			case "scrapmetal": {"life_inv_scrapmetal"};
			case "waffenteile": {"life_inv_waffenteile"};
			case "patrone": {"life_inv_patrone"};
			case "projektil": {"life_inv_projektil"};
			case "schwapu": {"life_inv_schwapu"};
			case "phull": {"life_inv_phull"};
			case "fishingpoles": {"life_inv_fishingpoles"};
			//// Raw
			///////////
			case "saphiru": {"life_inv_saphiru"};
			case "diamond": {"life_inv_diamond"};
			case "salt": {"life_inv_salt"};
			case "sand": {"life_inv_sand"};
			case "ironore": {"life_inv_ironore"};
			case "copperore": {"life_inv_copperore"};
			case "goldore": {"life_inv_goldore"};
			case "titanore": {"life_inv_titanore"};
			case "ironr": {"life_inv_ironr"};
			case "rock": {"life_inv_rock"};
			case "oilu": {"life_inv_oilu"};
			case "coalu": {"life_inv_coalu"};
			case "glass": {"life_inv_glass"};
			case "holz": {"life_inv_holz"};
			///////////
			case "uranu": {"life_inv_uranu"};
			case "uranu": {"life_inv_uranu"};
			case "uranu": {"life_inv_uranu"};
			case "uranu": {"life_inv_uranu"};
			case "uranu": {"life_inv_uranu"};
			case "uranu": {"life_inv_uranu"};
			case "uranu": {"life_inv_uranu"};
			///////////
			case "pear": {"life_inv_pear"};
			case "apple": {"life_inv_apple"};
			case "peach": {"life_inv_peach"};
			case "grape": {"life_inv_grape"};
			case "wheat": {"life_inv_wheat"};
			case "rye": {"life_inv_rye"};
			case "hops": {"life_inv_hops"};
			case "cornmeal": {"life_inv_cornmeal"};
			case "yeast": {"life_inv_yeast"};
			case "mash": {"life_inv_mash"};
			case "mehl": {"life_inv_mehl"};
			case "turtlesoup": {"life_inv_turtlesoup"};
			case "muschu": {"life_inv_muschu"};
			case "salema": {"life_inv_salema"};
			case "ornate": {"life_inv_ornate"};
			case "mackerel": {"life_inv_mackerel"};
			case "tuna": {"life_inv_tuna"};
			case "mullet": {"life_inv_mullet"};
			case "catshark": {"life_inv_catshark"};
			case "clam": {"life_inv_clam"};
			case "crab": {"life_inv_crab"};
			///////////
			case "mohn": {"life_inv_mohn"};
			case "cannabis": {"life_inv_cannabis"};
			case "cannabis": {"life_inv_cannabis"};
			case "cocaine": {"life_inv_cocaine"};
			case "cocain": {"life_inv_cocain"};
			case "lsdu": {"life_inv_lsdu"};
			case "methu": {"life_inv_methu"};
			case "mohn": {"life_inv_mohn"};
			///////////
			case "moonshine": {"life_inv_moonshine"};
			case "beer": {"life_inv_beer"};
			case "whiskey": {"life_inv_whiskey"};
			///////////
			///////////
			///////////
			///////////
			///////////
			///////////
			///////////
			///////////
			case "wool": {"life_inv_wool"};
			case "stoff": {"life_inv_stoff"};
			///////////
			///////////
			///////////
			///////////
			case "flashu": {"life_inv_flashu"};
			///////////
			/// Processed 
			///////////
			case "saphirc": {"life_inv_saphirc"};
			case "diamondc": {"life_inv_diamondc"};
			case "saltr": {"life_inv_saltr"};
			case "glass": {"life_inv_glass"};
			case "ironr": {"life_inv_ironr"};
			case "copperr": {"life_inv_copperr"};
			case "goldr": {"life_inv_goldr"};
			case "titanr": {"life_inv_titanr"};
			case "steel": {"life_inv_steel"};
			case "cement": {"life_inv_cement"};
			case "oilp": {"life_inv_oilp"};
			case "coalr": {"life_inv_coalr"};
			case "flashp": {"life_inv_flashp"};
			case "planke": {"life_inv_planke"};
			///////////
			case "uranp": {"life_inv_uranp"};
			case "uranium1": {"life_inv_uranium1"};
			case "uranium2": {"life_inv_uranium2"};
			case "uranium3": {"life_inv_uranium3"};
			case "uranium4": {"life_inv_uranium4"};
			case "puranium": {"life_inv_puranium"};
			case "ipuranium": {"life_inv_ipuranium"};
			///////////
			case "grapep": {"life_inv_grapep"};
			case "grapep1": {"life_inv_grapep1"};
			case "mehl": {"life_inv_mehl"};
			case "brot": {"life_inv_brot"};
			case "muschp": {"life_inv_muschp"};
			case "krabbenburger": {"life_inv_krabbenburger"};
			///////////
			case "heroinp": {"life_inv_heroinp"};
			case "marijuana": {"life_inv_marijuana"};
			case "marijuana1": {"life_inv_marijuana1"};
			case "cocainep": {"life_inv_cocainep"};
			case "lsdp": {"life_inv_lsdp"};
			case "methp": {"life_inv_methp"};
			case "krokp": {"life_inv_krokp"};
			///////////
			case "bottledshine": {"life_inv_bottledshine"};
			case "bottledbeer": {"life_inv_bottledbeer"};
			case "bottledwhiskey": {"life_inv_bottledwhiskey"};
			case "beerp": {"life_inv_beerp"};
			case "bottledwine": {"life_inv_bottledwine"};
			///////////
			///////////
			///////////
			///////////
			///////////
			///////////
			///////////
			///////////
			///////////
			///////////
			///////////
			///////////
			case "benzin": {"life_inv_benzin"};
			case "plastic": {"life_inv_plastic"};
			case "fuelF": {"life_inv_fuelF"};
			case "fuelE": {"life_inv_fuelE"};
			case "flashp": {"life_inv_flashp"};
			///////////



		};
	};
	
	case 1:
	{
		switch (_var) do
		{


			//Geld
			case "life_cash": {"money"};

			//// Pure 
			///////////
			///////////
			///////////
			case "life_inv_tbacon": {"tbacon"};
			case "life_inv_rabbit": {"rabbit"};
			case "life_inv_donuts": {"donuts"};
			case "life_inv_redgull": {"redgull"};
			case "life_inv_water": {"water"};
			case "life_inv_coffee": {"coffee"};
			case "life_inv_shoki": {"shoki"};
			case "life_inv_luckycookie": {"luckycookie"};
			///////////
			///////////
			///////////
			///////////
			///////////
			///////////
			///////////
			///////////
			///////////
			///////////
			///////////
			case "life_inv_bppickaxet": {"bppickaxet"};
			case "life_inv_pickaxet": {"pickaxet"};
			case "life_inv_bpaxet": {"bpaxet"};
			case "life_inv_axet": {"axet"};
			case "life_inv_axe": {"axe"};
			case "life_inv_spade": {"spade"};
			case "life_inv_hoe": {"hoe"};
			///////////
			case "life_inv_handcuffs": {"handcuffs"};
			case "life_inv_speedtrap": {"speedtrap"};
			case "life_inv_speedtrapdetector": {"speedtrapdetector"};
			case "life_inv_bark": {"bark"};
			case "life_inv_licht": {"licht"};
			case "life_inv_laptop": {"laptop"};
			case "life_inv_pole": {"pole"};
			case "life_inv_defusekit": {"defusekit"};
			case "life_inv_spikeStrip": {"spikeStrip"};
			///////////
			///////////
			case "life_inv_nspray": {"nspray"};
			case "life_inv_reniger": {"reniger"};
			case "life_inv_lwatch": {"lwatch"};
			case "life_inv_woodleg": {"woodleg"};
			case "life_inv_lighter": {"lighter"};
			case "life_inv_calc": {"calc"};
			case "life_inv_robo": {"robo"};
			case "life_inv_robo1": {"robo1"};
			case "life_inv_robo2": {"robo2"};
			case "life_inv_robo3": {"robo3"};
			case "life_inv_robo4": {"robo4"};
			case "life_inv_robo5": {"robo5"};
			case "life_inv_robo6": {"robo6"};
			case "life_inv_dinobone": {"dinobone"};
			case "life_inv_cables": {"cables"};
			case "life_inv_tnt": {"tnt"};
			case "life_inv_bottles": {"bottles"};
			case "life_inv_stotagesmall": {"stotagesmall"};
			case "life_inv_storagebig": {"storagebig"};
			case "life_inv_battery": {"battery"};
			case "life_inv_ladegeraet": {"ladegeraet"};
			case "life_inv_hoergeraet": {"hoergeraet"};
			case "life_inv_nitro": {"nitro"};
			case "life_inv_tracker": {"tracker"};
			case "life_inv_Kabelbinder": {"Kabelbinder"};
			case "life_inv_lockpick": {"lockpick"};
			case "life_inv_pearl": {"pearl"};
			///////////
			case "life_inv_blastingcharge": {"blastingcharge"};
			case "life_inv_boltcutter": {"boltcutter"};
			case "life_inv_scrapmetal": {"scrapmetal"};
			case "life_inv_waffenteile": {"waffenteile"};
			case "life_inv_patrone": {"patrone"};
			case "life_inv_projektil": {"projektil"};
			case "life_inv_schwapu": {"schwapu"};
			case "life_inv_phull": {"phull"};
			case "life_inv_fishingpoles": {"fishingpoles"};
			//// RAW 
			///////////
			case "life_inv_saphiru": {"saphiru"};
			case "life_inv_diamond": {"diamond"};
			case "life_inv_salt": {"salt"};
			case "life_inv_sand": {"sand"};
			case "life_inv_ironore": {"ironore"};
			case "life_inv_copperore": {"copperore"};
			case "life_inv_goldore": {"goldore"};
			case "life_inv_titanore": {"titanore"};
			case "life_inv_ironr": {"ironr"};
			case "life_inv_rock": {"rock"};
			case "life_inv_oilu": {"oilu"};
			case "life_inv_coalu": {"coalu"};
			case "life_inv_glass": {"glass"};
			case "life_inv_holz": {"holz"};
			///////////
			case "life_inv_uranu": {"uranu"};
			case "life_inv_uranu": {"uranu"};
			case "life_inv_uranu": {"uranu"};
			case "life_inv_uranu": {"uranu"};
			case "life_inv_uranu": {"uranu"};
			case "life_inv_uranu": {"uranu"};
			case "life_inv_uranu": {"uranu"};
			///////////
			case "life_inv_pear": {"pear"};
			case "life_inv_apple": {"apple"};
			case "life_inv_peach": {"peach"};
			case "life_inv_grape": {"grape"};
			case "life_inv_wheat": {"wheat"};
			case "life_inv_rye": {"rye"};
			case "life_inv_hops": {"hops"};
			case "life_inv_cornmeal": {"cornmeal"};
			case "life_inv_yeast": {"yeast"};
			case "life_inv_mash": {"mash"};
			case "life_inv_mehl": {"mehl"};
			case "life_inv_turtlesoup": {"turtlesoup"};
			case "life_inv_muschu": {"muschu"};
			case "life_inv_salema": {"salema"};
			case "life_inv_ornate": {"ornate"};
			case "life_inv_mackerel": {"mackerel"};
			case "life_inv_tuna": {"tuna"};
			case "life_inv_mullet": {"mullet"};
			case "life_inv_catshark": {"catshark"};
			case "life_inv_clam": {"clam"};
			case "life_inv_crab": {"crab"};
			///////////
			case "life_inv_mohn": {"mohn"};
			case "life_inv_cannabis": {"cannabis"};
			case "life_inv_cannabis": {"cannabis"};
			case "life_inv_cocaine": {"cocaine"};
			case "life_inv_cocain": {"cocain"};
			case "life_inv_lsdu": {"lsdu"};
			case "life_inv_methu": {"methu"};
			case "life_inv_mohn": {"mohn"};
			///////////
			case "life_inv_moonshine": {"moonshine"};
			case "life_inv_beer": {"beer"};
			case "life_inv_whiskey": {"whiskey"};
			///////////
			///////////
			///////////
			///////////
			///////////
			///////////
			///////////
			///////////
			case "life_inv_wool": {"wool"};
			case "life_inv_stoff": {"stoff"};
			///////////
			///////////
			///////////
			///////////
			case "life_inv_flashu": {"flashu"};
			///////////
			//// Processed 
			///////////
			case "life_inv_saphirc": {"saphirc"};
			case "life_inv_diamondc": {"diamondc"};
			case "life_inv_saltr": {"saltr"};
			case "life_inv_glass": {"glass"};
			case "life_inv_ironr": {"ironr"};
			case "life_inv_copperr": {"copperr"};
			case "life_inv_goldr": {"goldr"};
			case "life_inv_titanr": {"titanr"};
			case "life_inv_steel": {"steel"};
			case "life_inv_cement": {"cement"};
			case "life_inv_oilp": {"oilp"};
			case "life_inv_coalr": {"coalr"};
			case "life_inv_flashp": {"flashp"};
			case "life_inv_planke": {"planke"};
			///////////
			case "life_inv_uranp": {"uranp"};
			case "life_inv_uranium1": {"uranium1"};
			case "life_inv_uranium2": {"uranium2"};
			case "life_inv_uranium3": {"uranium3"};
			case "life_inv_uranium4": {"uranium4"};
			case "life_inv_puranium": {"puranium"};
			case "life_inv_ipuranium": {"ipuranium"};
			///////////
			case "life_inv_grapep": {"grapep"};
			case "life_inv_grapep1": {"grapep1"};
			case "life_inv_mehl": {"mehl"};
			case "life_inv_brot": {"brot"};
			case "life_inv_muschp": {"muschp"};
			case "life_inv_krabbenburger": {"krabbenburger"};
			///////////
			case "life_inv_heroinp": {"heroinp"};
			case "life_inv_marijuana": {"marijuana"};
			case "life_inv_marijuana1": {"marijuana1"};
			case "life_inv_cocainep": {"cocainep"};
			case "life_inv_lsdp": {"lsdp"};
			case "life_inv_methp": {"methp"};
			case "life_inv_krokp": {"krokp"};
			///////////
			case "life_inv_bottledshine": {"bottledshine"};
			case "life_inv_bottledbeer": {"bottledbeer"};
			case "life_inv_bottledwhiskey": {"bottledwhiskey"};
			case "life_inv_beerp": {"beerp"};
			case "life_inv_bottledwine": {"bottledwine"};
			///////////
			///////////
			///////////
			///////////
			///////////
			///////////
			///////////
			///////////
			///////////
			///////////
			///////////
			///////////
			case "life_inv_benzin": {"benzin"};
			case "life_inv_plastic": {"plastic"};
			case "life_inv_fuelF": {"fuelF"};
			case "life_inv_fuelE": {"fuelE"};
			case "life_inv_flashp": {"flashp"};
			///////////

		};
	};
};
