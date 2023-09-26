/*
	File: fn_licenseType.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Returns the short-var of the license name to a long var and display name.
*/
private["_type","_ret","_var","_mode"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
_mode = [_this,1,-1,[0]] call BIS_fnc_param;
if(_type == "" OR _mode == -1) exitWith {[]};

switch (_mode) do
{
	case 0:
	{
		switch (_type) do
		{
			// Legal 
			///////////
			case "saphir": {_var = "licence_civ_saphir"};
			case "diamond": {_var = "licence_civ_diamond"};
			case "salt": {_var = "licence_civ_salt"};
			case "sand": {_var = "licence_civ_sand"};
			case "iron": {_var = "licence_civ_iron"};
			case "copper": {_var = "licence_civ_copper"};
			case "gold": {_var = "licence_civ_gold"};
			case "titan": {_var = "licence_civ_titan"};
			case "stahl": {_var = "licence_civ_stahl"};
			case "cement": {_var = "licence_civ_cement"};
			case "oil": {_var = "licence_civ_oil"};
			case "coal": {_var = "licence_civ_coal"};
			case "lowin": {_var = "licence_civ_lowin"};
			case "midin": {_var = "licence_civ_midin"};
			case "highin": {_var = "licence_civ_highin"};
			case "geo1": {_var = "licence_civ_geo1"};
			case "geo2": {_var = "licence_civ_geo2"};
			case "geo3": {_var = "licence_civ_geo3"};
			case "timber": {_var = "licence_civ_timber"};
			///////////
			case "Uran": {_var = "licence_civ_Uran"};
			case "Uran1": {_var = "licence_civ_Uran1"};
			case "Uran2": {_var = "licence_civ_Uran2"};
			case "Uran3 ": {_var = "licence_civ_Uran3 "};
			case "Uran4": {_var = "licence_civ_Uran4"};
			case "puranium": {_var = "licence_civ_puranium"};
			case "ipuranium": {_var = "licence_civ_ipuranium"};
			///////////
			case "mash": {_var = "licence_civ_mash"};
			case "backery": {_var = "licence_civ_backery"};
			case "food 1": {_var = "licence_civ_food 1"};
			case "food 2": {_var = "licence_civ_food 2"};
			case "food 3": {_var = "licence_civ_food 3"};
			///////////
			case "heroin": {_var = "licence_civ_heroin"};
			case "marijuana": {_var = "licence_civ_marijuana"};
			case "medmarijuana": {_var = "licence_civ_medmarijuana"};
			case "cocaine": {_var = "licence_civ_cocaine"};
			case "lsd": {_var = "licence_civ_lsd"};
			case "meth": {_var = "licence_civ_meth"};
			case "krok": {_var = "licence_civ_krok"};
			case "drug1": {_var = "licence_civ_drug1"};
			case "drug2": {_var = "licence_civ_drug2"};
			case "drug3": {_var = "licence_civ_drug3"};
			///////////
			case "stiller": {_var = "licence_civ_stiller"};
			case "bottler": {_var = "licence_civ_bottler"};
			case "liquor": {_var = "licence_civ_liquor"};
			case "vinitor": {_var = "licence_civ_vinitor"};
			///////////
			case "chem1": {_var = "licence_civ_chem1"};
			case "chem2": {_var = "licence_civ_chem2"};
			case "chem3": {_var = "licence_civ_chem3"};
			///////////
			case "build": {_var = "licence_civ_build"};
			///////////
			case "schmuck1": {_var = "licence_civ_schmuck1"};
			case "schmuck2": {_var = "licence_civ_schmuck2"};
			///////////
			case "edel1": {_var = "licence_civ_edel1"};
			case "edel2": {_var = "licence_civ_edel2"};
			///////////
			case "addinv": {_var = "licence_civ_addinv"};
			///////////
			case "skill": {_var = "licence_civ_skill"};
			///////////
			case "wp": {_var = "licence_civ_wp"};
			///////////
			///////////
			///////////
			///////////
			case "cair": {_var = "licence_civ_cair"};
			case "swat": {_var = "licence_civ_swat"};
			case "cg": {_var = "licence_civ_cg"};
			case "driver": {_var = "licence_civ_driver"};
			case "pilot": {_var = "licence_civ_pilot"};
			case "gang": {_var = "licence_civ_gang"};
			case "boat": {_var = "licence_civ_boat"};
			case "dive": {_var = "licence_civ_dive"};
			case "truck": {_var = "licence_civ_truck"};
			case "gun": {_var = "licence_civ_gun"};
			case "rebel": {_var = "licence_civ_rebel"};
			case "air": {_var = "licence_civ_air"};
			case "home": {_var = "licence_civ_home"};
			case "vmg": {_var = "licence_civ_vmg"};
			case "kopf": {_var = "licence_civ_kopf"};
			///////////
			///////////



			case "adac": {_var = "license_med_adac"};
			case "adac" : {_var = "license_med_adac"};

	
			
			default {_var = ""};
		};
	};
	
	case 1:
	{
		switch (_type) do
		{
			// Legal 

			case "license_med_adac": {_var = "adac"};					//ADAC
			case "license_adac_air": {_var = "adacair"}; 				//ADAC Air

			///////////
			case"licence_civ_saphir": {_var = "saphir"};
			case"licence_civ_diamond": {_var = "diamond"};
			case"licence_civ_salt": {_var = "salt"};
			case"licence_civ_sand": {_var = "sand"};
			case"licence_civ_iron": {_var = "iron"};
			case"licence_civ_copper": {_var = "copper"};
			case"licence_civ_gold": {_var = "gold"};
			case"licence_civ_titan": {_var = "titan"};
			case"licence_civ_stahl": {_var = "stahl"};
			case"licence_civ_cement": {_var = "cement"};
			case"licence_civ_oil": {_var = "oil"};
			case"licence_civ_coal": {_var = "coal"};
			case"licence_civ_lowin": {_var = "lowin"};
			case"licence_civ_midin": {_var = "midin"};
			case"licence_civ_highin": {_var = "highin"};
			case"licence_civ_geo1": {_var = "geo1"};
			case"licence_civ_geo2": {_var = "geo2"};
			case"licence_civ_geo3": {_var = "geo3"};
			case"licence_civ_timber": {_var = "timber"};
			///////////
			case"licence_civ_Uran": {_var = "Uran"};
			case"licence_civ_Uran1": {_var = "Uran1"};
			case"licence_civ_Uran2": {_var = "Uran2"};
			case"licence_civ_Uran3 ": {_var = "Uran3 "};
			case"licence_civ_Uran4": {_var = "Uran4"};
			case"licence_civ_puranium": {_var = "puranium"};
			case"licence_civ_ipuranium": {_var = "ipuranium"};
			///////////
			case"licence_civ_mash": {_var = "mash"};
			case"licence_civ_backery": {_var = "backery"};
			case"licence_civ_food 1": {_var = "food 1"};
			case"licence_civ_food 2": {_var = "food 2"};
			case"licence_civ_food 3": {_var = "food 3"};
			///////////
			case"licence_civ_heroin": {_var = "heroin"};
			case"licence_civ_marijuana": {_var = "marijuana"};
			case"licence_civ_medmarijuana": {_var = "medmarijuana"};
			case"licence_civ_cocaine": {_var = "cocaine"};
			case"licence_civ_lsd": {_var = "lsd"};
			case"licence_civ_meth": {_var = "meth"};
			case"licence_civ_krok": {_var = "krok"};
			case"licence_civ_drug1": {_var = "drug1"};
			case"licence_civ_drug2": {_var = "drug2"};
			case"licence_civ_drug3": {_var = "drug3"};
			///////////
			case"licence_civ_stiller": {_var = "stiller"};
			case"licence_civ_bottler": {_var = "bottler"};
			case"licence_civ_liquor": {_var = "liquor"};
			case"licence_civ_vinitor": {_var = "vinitor"};
			///////////
			case"licence_civ_chem1": {_var = "chem1"};
			case"licence_civ_chem2": {_var = "chem2"};
			case"licence_civ_chem3": {_var = "chem3"};
			///////////
			case"licence_civ_build": {_var = "build"};
			///////////
			case"licence_civ_schmuck1": {_var = "schmuck1"};
			case"licence_civ_schmuck2": {_var = "schmuck2"};
			///////////
			case"licence_civ_edel1": {_var = "edel1"};
			case"licence_civ_edel2": {_var = "edel2"};
			///////////
			case"licence_civ_addinv": {_var = "addinv"};
			///////////
			case"licence_civ_skill": {_var = "skill"};
			///////////
			case"licence_civ_wp": {_var = "wp"};
			///////////
			///////////
			///////////
			///////////
			case"licence_civ_cair": {_var = "cair"};
			case"licence_cop_swat": {_var = "swat"};
			case"licence_cop_cg": {_var = "cg"};
			case"licence_civ_driver": {_var = "driver"};
			case"licence_civ_pilot": {_var = "pilot"};
			case"licence_civ_gang": {_var = "gang"};
			case"licence_civ_boat": {_var = "boat"};
			case"licence_civ_dive": {_var = "dive"};
			case"licence_civ_truck": {_var = "truck"};
			case"licence_civ_gun": {_var = "gun"};
			case"licence_civ_rebel": {_var = "rebel"};
			case"licence_med_air": {_var = "air"};
			case"licence_civ_home": {_var = "home"};
			case"licence_civ_vmg": {_var = "vmg"};
			case"licence_cop_kopf": {_var = "kopf"};
			///////////
			///////////
			case "license_civ_bottler": {_var = "glassbottle"};
			case "license_civ_bottler": {_var = "bottler"};
			case "license_civ_bottler": {_var = "bottledwhiskey"};
			case "license_civ_bottler": {_var = "bottledbeer"};
			case "license_civ_bottler": {_var = "bottledshine"};
			case "license_civ_stiller": {_var = "mash"};
			case "license_civ_stiller": {_var = "moonshine"};
			case "license_civ_stiller": {_var = "whiskey"};
			case "license_civ_stiller": {_var = "stiller"};
			case "license_civ_stiller": {_var = "liquor"};
			case "license_civ_stiller": {_var = "beer"};
			
			default {_var = ""};
		};
	};
};

_ret = [_var,(if(_var != "") then {([_var] call life_fnc_varToStr)})];
_ret;