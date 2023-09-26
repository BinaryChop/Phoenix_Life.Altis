/*
File: fn_processAction.sqf new
Author: Bryan "Tonic" Boardwine
edited by theInfinit (to process 2 Item to a combination)
re-edited by [midgetgrimm]
Description:
Master handling for processing an item.
*/
private["_vendor","_type","_itemInfo","_oldItem","_oldItem2","_newItem","_cost","_upp","_hasLicense","_itemName","_oldVal","_oldVal2","_ui","_progress","_pgText","_cP","_error1","_error2"];
_vendor = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_type = [_this,3,"",[""]] call BIS_fnc_param;
//Error check
if(isNull _vendor OR _type == "" OR (player distance _vendor > 10)) exitWith {};

_error1 = false; // used below check the comment there ;) 
_error2 - false;
//unprocessed item,processed item, cost if no license,Text to display (I.e Processing  (percent) ...",processing 2Items?, (only for processing with 2) second Item.
_itemInfo = switch (_type) do
{
  	



  	///////////
case "saphir": {["saphiru","saphirc",1337,"Verarbeite Saphir",false]};
case "diamond": {["diamond","diamondc",1337,"Verarbeite Diamant",false]};
case "salt": {["salt","saltr",1337,"Verarbeite Salz",false]};
case "sand": {["sand","glass",1337,"Verarbeite Glass",false]};
case "iron": {["ironore","ironr",1337,"Verarbeite Eisen",false]};
case "copper": {["copperore","copperr",1337,"Verarbeite Kupfer",false]};
case "gold": {["goldore","goldr",1337,"Verarbeite Gold",false]};
case "titan": {["titanore","titanr",1337,"Verarbeite Titan",false]};
case "stahl": {["ironr","steel",1337,"VerarbeiteStahl",true,"coalr"]};
case "cement": {["rock","cement",1337,"Verarbeite Zement",false]};
case "oil": {["oilu","oilp",1337,"Verarbeite oel",false]};
case "coal": {["coalu","coalr",1337,"Verarbeite Kohle",false]};
case "lowin": {["glass","flashp",1337,"Verarbeite Flasche",false]};
case "timber": {["holz","planke",1337,"Verarbeite Planke",false]};
///////////
case "Uran": {["uranu","uranp",1337,"Verarbeite Uran",false]};
///////////
case "grape": {["grape","grapep",1337,"Verarbeite Edeltraube",false]};
case "mehl": {["wheat","mehl",1337,"Verarbeite Mehl",false]};
case "backery": {["mehl","brot",1337,"VerarbeiteBrot",true,"yeast"]};
case "musch": {["muschu","muschp",1377,"Verarbeite Muschel",false]};
///////////
case "heroin": {["mohn","heroinp",1337,"Verarbeite Heroin",false]};
case "marijuana": {["cannabis","marijuana",1337,"Verarbeite Marijuana",false]};
case "medmarijuana": {["cannabis","marijuana1",1337,"Verarbeite MED Marijuna",false]};
case "cocaine": {["cocaine","cocainep",1337,"Verarbeite Kokain",false]};
case "lsd": {["lsdu","lsdp",1337,"Verarbeite LSD",false]};
case "meth": {["methu","methp",1337,"Verarbeite Meth",false]};
case "krok": {["mohn","krokp",1337,"Verarbeite Desomorphin",false]};
///////////
case "stiller": {["moonshine","bottledshine",1337,"Verarbeite Flasche Schnaps",false]};
case "bottler": {["beer","bottledbeer",1337,"Verarbeite Flasche Bier",false]};
case "liquor": {["whiskey","bottledwhiskey",1337,"Verarbeite Flasche Whiskey",false]};
case "vinitor": {["grapep","bottledwine",1337,"VerarbeiteFlasche Wein",true,"flashp"]};

//case "": {["flashu","flashp",1337,"Verarbeite saubere Flasche",false]};
///////////
// Metal & Materials

	
	case "grape": {["grape","grapep",1337,"Verarbeite Edeltraube",false]};
	
	case "wheat": {["wheat","mehl",1337,"Verarbeite Mehl",false]};
	
	case "backery": {["mehl","brot",1337,"VerarbeiteBrot",true,"yeast"]};
	
	case "clam": {["muschu","muschp",1377,"Verarbeite Muschel",false]};
	

	
	case "vinitor": {["grapep","bottledwine",1337,"VerarbeiteFlasche Wein",true,"flashp"]};

	case "glassbottle":{["glass","bottles",650,"Making Bottles",false]};//new
	
	//Drugs


	//Alcohol
	case "grapes": {["grapes","wine",250,"Processing Grapes into Wine",false]};
	case "whiskey": {["yeast","whiskey",1000,"Fermenting Whiskey",true,"rye"]};//new
	case "beer": {["yeast","beerp",1500,"Brewing Beer",true,"hops"]};//new
	case "moonshine": {["yeast","moonshine",250,"Moonshining",true,"mash"]};//new
	case "bottledshine": {["moonshine","bottledshine",500,"Bootle Moonshine",true,"bottles"]};//new
	case "bottledbeer": {["beerp","bottledbeer",500,"Bottle Beer",true,"bottles"]};//new
	case "bottledwhiskey": {["whiskey","bottledwhiskey",500,"Bottle Whiskey",true,"bottles"]};//new
    
    //Illegal Ores
    case "uranium1": {["uranium1","uranium2",5000,"Reinigung des Urans",false]}; // Add this
    case "uranium4": {["uranium4","uranium",15000,"Uran wird getrocknet",false]}; // Add this

    default {[]};
};


//Error checking
if(count _itemInfo == 0) exitWith {};

//Setup vars.  // true if process action is with 2 Items and false if processing with 1 Item.
_oldItem = _itemInfo select 0;
_newItem = _itemInfo select 1;
_cost = _itemInfo select 2;
_upp = _itemInfo select 3;
_2var = _itemInfo select 4;
if(_2var) then { _oldItem2 = _itemInfo select 5;};  

if(_vendor in [mari_processor,coke_processor,heroin_processor]) then {
	_hasLicense = true;
} else {
	_hasLicense = missionNamespace getVariable (([_type,0] call life_fnc_licenseType) select 0);
};

_itemName = [([_newItem,0] call life_fnc_varHandle)] call life_fnc_varToStr;
_oldVal = missionNamespace getVariable ([_oldItem,0] call life_fnc_varHandle);

//2vars
if(_2var) then { _oldVal2 = missionNamespace getVariable ([_oldItem2,0] call life_fnc_varHandle); }; 

if(_2var) then { 
       if(_oldVal !=_oldVal2) then {
			if(_oldVal > _oldVal2) then {_error1 = true;};
			if(_oldVal2 > _oldVal) then {_error2 = true;};
       };   
};
if(_error1) exitWith{hint format["You have too much %1, you need equal amounts",_oldItem];};
if(_error2) exitWith{hint format["You have too much %1, you need equal amounts",_oldItem2];};

_cost = _cost * _oldVal;

//Some more checks
if(_oldVal == 0) exitWith {};

//Setup our progress bar.
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
_progress progressSetPosition 0.01;
_cP = 0.01;

life_is_processing = true;

if(_hasLicense) then
{
		while{true} do
		{
			sleep  0.3;
			_cP = _cP + 0.02;
			_progress progressSetPosition _cP;
			_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
			if(_cP >= 1) exitWith {};
			if(player distance _vendor > 10) exitWith {};
			
		};

		if(player distance _vendor > 10) exitWith {hint localize "STR_Process_Stay"; 5 cutText ["","PLAIN"]; life_is_processing = false;};

		
			
			if(!([false,_oldItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; life_is_processing = false;};
			if(!([true,_newItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; [true,_oldItem,_oldVal] call life_fnc_handleInv; life_is_processing = false;};
			
			//2vars
			if(_2var) then 
			{
				
				([false,_oldItem2,_oldVal2] call life_fnc_handleInv);
				5 cutText ["","PLAIN"];
				titleText[format["You have processed %1 and %2 into %3.",_oldItem,_oldItem2,_itemName],"PLAIN"];
			} else
			{
				
				5 cutText ["","PLAIN"];
				titleText[format["You have processed %1 into %2.",_oldItem,_itemName],"PLAIN"];
			};
			
			life_is_processing = false;
			

}
else
{
			if(life_cash < _cost) exitWith {hint format["You need $%1 to process without a license!",[_cost] call life_fnc_numberText]; 5 cutText ["","PLAIN"]; life_is_processing = false;};

			while{true} do
			{
					sleep  0.9;
					_cP = _cP + 0.02;
					_progress progressSetPosition _cP;
					_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
					if(_cP >= 1) exitWith {};
					if(player distance _vendor > 10) exitWith {};
			};

			if(player distance _vendor > 10) exitWith {hint "You need to stay within 10m to process."; 5 cutText ["","PLAIN"]; life_is_processing = false;};

			if(life_cash < _cost) exitWith {hint format["You need $%1 to process  without a license!",[_cost] call life_fnc_numberText]; 5 cutText ["","PLAIN"]; life_is_processing = false;};
			
			if(!([false,_oldItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; life_is_processing = false;};
			if(!([true,_newItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; [true,_oldItem,_oldVal] call life_fnc_handleInv; life_is_processing = false;};
			
			//2vars
			if(_2var) then 
			{
				
				([false,_oldItem2,_oldVal2] call life_fnc_handleInv);
				5 cutText ["","PLAIN"];
				titleText[format["You have processed %1 and %2 into %3 for %4.",_oldItem,_oldItem2,_itemName,[_cost] call life_fnc_numberText],"PLAIN"];
			} else
			{
				
				5 cutText ["","PLAIN"];
				titleText[format["You have processed %1 into %2 for %3.",_oldVal,_itemName,[_cost] call life_fnc_numberText],"PLAIN"];
			};
			life_cash = life_cash - _cost;
			
			life_is_processing = false;
}; 