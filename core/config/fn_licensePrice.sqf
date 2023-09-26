/*
	File: fn_licensePrice.sqf edit Ministry of Mad Men
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Returns the license price.
*/
private["_type"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
if(_type == "") exitWith {-1};

switch (_type) do
{	
	// CIV 

	
	//ADAC
	case "adac": {10000}; 			//ADAC Lizenz
	case "adacair": {0};			//ADAC Air Cost 
	

	///////////
	case "saphir": {40000};
	case "diamond": {50000};
	case "salt": {120000};
	case "sand": {7500};
	case "iron": {9500};
	case "copper": {11000};
	case "gold": {85000};
	case "titan": {75000};
	case "stahl": {11000};
	case "cement": {7000};
	case "oil": {7500};
	case "coal": {6000};
	case "lowin": {400000};
	case "midin": {400000};
	case "highin": {400000};
	case "geo1": {45000};
	case "geo2": {45000};
	case "geo3": {45000};
	case "timber": {8800};
	///////////
	case "Uran": {110000};
	case "Uran1": {450000};
	case "Uran2": {450000};
	case "Uran3 ": {450000};
	case "Uran4": {450000};
	case "puranium": {450000};
	case "ipuranium": {450000};
	///////////
	case "mash": {100000};
	case "backery": {35000};
	case "food 1": {500000};
	case "food 2": {500000};
	case "food 3": {500000};
	///////////
	case "heroin": {25000};
	case "marijuana": {65000};
	case "medmarijuana": {1500};
	case "cocaine": {30000};
	case "lsd": {21000};
	case "meth": {65000};
	case "krok": {20000};
	case "drug1": {250000};
	case "drug2": {250000};
	case "drug3": {250000};
	///////////
	case "stiller": {25000};
	case "bottler": {25000};
	case "liquor": {50000};
	///////////
	case "chem1": {250000};
	case "chem2": {250000};
	case "chem3": {250000};
	///////////
	case "build": {250000};
	///////////
	case "schmuck1": {250000};
	case "schmuck2": {250000};
	///////////
	case "edel1": {250000};
	case "edel2": {250000};
	///////////
	case "addinv": {250000};
	///////////
	case "skill": {250000};
	///////////
	case "wp": {250000};
	///////////
	///////////
	///////////
	///////////
	case "cair": {15000};
	case "swat": {30000};
	case "cg": {8000};
	case "driver": {1700};
	case "pilot": {50000};
	case "gang": {200000};
	case "boat": {5000};
	case "dive": {4500};
	case "truck": {35000};
	case "gun": {75000};
	case "rebel": {1500000};
	case "air": {1};
	case "home": {1500000};
	case "vmg": {1};
	case "kopf": {1};
	///////////
	///////////
	

	
};