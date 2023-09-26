/*
	File: fn_itemWeight.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gets the items weight and returns it.
*/
private["_item"];
_item = [_this,0,"",[""]] call BIS_fnc_param;
if(_item == "") exitWith {};

switch (_item) do
{	


	case "money": {0};
	
	/// pure 
	///////////
	///////////
	///////////
	case "tbacon": {10};
	case "rabbit": {10};
	case "krabbenburger": {10};
	case "donuts": {10};
	case "redgull": {10};
	case "water": {10};
	case "coffee": {10};
	case "shoki": {10};
	case "luckycookie": {10};
	///////////
	///////////
	case "bppickaxet": {10};
	case "pickaxet": {10};
	case "bpaxet": {10};
	case "axet": {10};
	case "axe": {10};
	case "spade": {10};
	case "hoe": {10};
	///////////
	case "handcuffs": {10};
	case "speedtrap": {10};
	case "speedtrapdetector": {10};
	case "bark": {10};
	case "licht": {10};
	case "laptop": {10};
	case "pole": {10};
	case "defusekit": {10};
	case "spikeStrip": {10};
	///////////
	///////////
	case "nspray": {10};
	case "reniger": {10};
	case "lwatch": {10};
	case "woodleg": {10};
	case "lighter": {10};
	case "calc": {10};
	case "robo": {10};
	case "robo1": {10};
	case "robo2": {10};
	case "robo3": {10};
	case "robo4": {10};
	case "robo5": {10};
	case "robo6": {10};
	case "dinobone": {10};
	case "cables": {10};
	case "tnt": {10};
	case "bottles": {10};
	case "stotagesmall": {10};
	case "storagebig": {10};
	case "battery": {10};
	case "ladegeraet": {10};
	case "hoergeraet": {10};
	case "nitro": {10};
	case "tracker": {10};
	case "Kabelbinder": {10};
	case "lockpick": {10};
	case "pearl": {10};
	///////////
	case "blastingcharge": {10};
	case "boltcutter": {10};
	case "scrapmetal": {10};
	case "waffenteile": {10};
	case "patrone": {10};
	case "projektil": {10};
	case "schwapu": {10};
	case "phull": {10};
	case "fishingpoles": {10};
	/// RAW
	///////////
	case "saphiru": {10};
	case "diamond": {10};
	case "salt": {10};
	case "sand": {10};
	case "ironore": {10};
	case "copperore": {10};
	case "goldore": {10};
	case "titanore": {10};
	case "ironr": {10};
	case "rock": {10};
	case "oilu": {10};
	case "coalu": {10};
	case "glass": {10};
	case "holz": {10};
	///////////
	case "uranu": {10};
	case "uranu": {};
	case "uranu": {};
	case "uranu": {};
	case "uranu": {};
	case "uranu": {};
	case "uranu": {};
	///////////
	case "pear": {10};
	case "apple": {10};
	case "peach": {10};
	case "grape": {10};
	case "wheat": {10};
	case "rye": {10};
	case "hops": {10};
	case "cornmeal": {10};
	case "yeast": {10};
	case "mash": {10};
	case "mehl": {10};
	case "turtlesoup": {10};
	case "muschu": {10};
	case "salema": {10};
	case "ornate": {10};
	case "mackerel": {10};
	case "tuna": {10};
	case "mullet": {10};
	case "catshark": {10};
	case "clam": {10};
	case "crab": {10};
	///////////
	case "mohn": {10};
	case "cannabis": {10};
	case "cannabis": {10};
	case "cocaine": {10};
	case "lsdu": {10};
	case "methu": {10};
	case "mohn": {10};
	///////////
	case "moonshine": {10};
	case "beer": {10};
	case "whiskey": {10};
	case "grapep": {10};
	///////////
	///////////
	case "wool": {10};
	case "stoff": {10};
	///////////
	///////////
	///////////
	///////////
	case "flashu": {10};
	///////////
	/// Processed
	///////////
	case "saphirc": {10};
	case "diamondc": {10};
	case "saltr": {10};
	case "glass": {10};
	case "ironr": {10};
	case "copperr": {10};
	case "goldr": {10};
	case "titanr": {10};
	case "steel": {10};
	case "cement": {10};
	case "oilp": {10};
	case "coalr": {10};
	case "flashp": {10};
	case "planke": {10};
	///////////
	case "uranp": {10};
	case "uranium1": {};
	case "uranium2": {};
	case "uranium3": {};
	case "uranium4": {};
	case "puranium": {};
	case "ipuranium": {};
	///////////
	case "grapep": {10};
	case "grapep1": {};
	case "mehl": {10};
	case "brot": {10};
	case "muschp": {10};
	///////////
	case "heroinp": {10};
	case "marijuana": {10};
	case "marijuana1": {10};
	case "cocainep": {10};
	case "lsdp": {10};
	case "methp": {10};
	case "krokp": {10};
	///////////
	case "bottledshine": {10};
	case "bottledbeer": {10};
	case "bottledwhiskey": {10};
	case "beerp": {10};
	case "bottledwine": {10};
	///////////
	///////////
	case "benzin": {10};
	case "plastic": {10};
	case "fuelF": {10};
	case "fuelE": {10};
	case "flashp": {10};
	///////////

	

	case "kidney": {20};
	case "scalpel": {5};
	// case "weapons": {7};
	// case "window": {18};
	// case "ferro": {7};
	// case "strawberry": {2};
	//1
	// case "shovel": {2};
	// case "wood": {7};
	// case "marmelade": {1};
	// case "cigars": {5};
	// case "tabaco": {2};
	// case "gum": {3};
	// //2
	
	// case "wheels": {6};
	// case "stinkbomb": {4};
	// case "flower1": {3};
	// case "flower2": {3};
	// case "flower3": {3};
	// case "flower4": {3};
	// case "parfum": {4};
	// case "meat": {4};
	// case "meatburger": {4};
	// case "motor": {18};
	// case "interieur": {18};
	// case "chassi": {18};
	// //3
	// case "ruby": {2};
	// case "saphire": {1};
	// case "smaragd": {1};
	// case "rubyu": {3};
	// case "saphireu": {3};
	// case "smaragdu": {3};
	// case "quarz": {3};
	// case "silizium": {3};
	// case "microchips": {1};
	// case "pc": {5};
	// case "tv": {7};
	// case "smartphones": {2};
	// case "shovelt": {2};


	
	
	default {1};
};
