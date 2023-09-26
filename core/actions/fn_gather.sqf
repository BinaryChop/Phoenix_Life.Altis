/*
	File: fn_gather.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Main functionality for gathering. == Gathering by hand. 

	Latest edit by Phoenix Multigaming & Ministry of Mad Men 
*/
private["_gather","_itemWeight","_diff","_itemName","_val","_resourceZones","_zone"];
_resourceZones = ["apple_1","apple_2","apple_3","apple_4","peaches_1","peaches_2","peaches_3","peaches_4","grapes_1","grapes_2","grapes_3","grapes_4","clam_1","clam_2","clam_3","clam_4","clam_5","clam_6","crab_1","crab_2","crab_3","crab_4","crab_5","crab_6","pears_1","pears_2","pears_3","pears_4","lsd_1","lsd_2","heroin_1","heroin_2","heroin_3","cocaine_1","cocaine_2","cocaine_3","weed_1","weed_2","weed_3","krok_1","krok_2","meth_1","meth_2","meth_3","rye_1","hops_1","cornmeal_1","yeast_1"];
_zone = "";
if(life_action_inUse) exitWith {}; 
if(life_action_gather) exitWith {}; 
//if (player distance life_lastDrugPicked < 3) exitWith {[2,"Hey buddy, remember, you didn't find anything, look somewhere else..."] call life_fnc_broadcast;};
//_chance = round(random 1000);
//Find out what zone we're near
{
	if(player distance (getMarkerPos _x) < 75) exitWith {_zone = _x;};
} foreach _resourceZones;

if(_zone == "") exitWith {
	//hint localize "STR_NOTF_notNearResource";
	life_action_inUse = false;
	life_action_gather = false;
};

//Get the resource that will be gathered from the zone name...
switch(true) do {
	//food 1 / fruit & Veg.
	case (_zone in ["apple_1","apple_2","apple_3","apple_4"]): {_gather = "apple"; _val = 2;};
	case (_zone in ["peaches_1","peaches_2","peaches_3","peaches_4"]): {_gather = "peach"; _val = 2;};
	case (_zone in ["pears_1","pears_2","pears_3","pears_4"]): {_gather = "pear"; _val = 2;};
	case (_zone in ["grapes_1","grapes_2","grapes_3","grapes_4"]): {_gather = "grape"; _val = 2;};
	//Food 2 / corns & additives
	case (_zone in ["rye_1"]): {_gather = "rye"; _val = 1;};
	case (_zone in ["hops_1"]): {_gather = "hops"; _val = 1;};
	case (_zone in ["cornmeal_1"]): {_gather = "cornmeal"; _val = 1;};
	case (_zone in ["yeast_1"]): {_gather = "yeast"; _val = 2;};
	case (_zone in ["wheat_1"]): {_gather = "wheat"; _val = 4;};
	//Food 3 / Fish, Seafoods & meats
	case (_zone in ["crab_1","crab_2","crab_3","crab_4","crab_5","crab_6"]): {_gather = "crab"; _val = 2;};
	case (_zone in ["clam_1","clam_2","clam_3","clam_4","clam_5","clam_6"]): {_gather = "clam"; _val = 2;};
	//drugs
	case (_zone in ["weed_1","weed_2","weed_3"]): {_gather = "cannabis"; _val = 1;};
	case (_zone in ["cocaine_1","cocaine_2","cocaine_3"]): {_gather = "cocaine"; _val = 1;};
	case (_zone in ["cocain_1","cocain_2","cocain_3"]): {_gather = "cocain"; _val = 1;};
	case (_zone in ["heroin_1","heroin_2","heroin_3"]): {_gather = "heroinu"; _val = 1;};
	case (_zone in ["krok_1","krok_2"]): {_gather = "kroku"; _val = 1;};
	case (_zone in ["meth_1","meth_2","meth_3"]): {_gather = "methu"; _val = 1;};
	case (_zone in ["lsd_1","lsd_2"]): {_gather = "lsdu"; _val = 2;};
	
	default {""};
};
//gather check?? 
_addExpAmount = 5;
_time = 3;
_profName = [_gather] call life_fnc_profType;
if( _profName != "" ) then {
		_data = missionNamespace getVariable (_profName);
		_time = ( 3 - (0.25 * (_data select 0)));
		if((_data select 0) > 0) then {
				_val = _val * (_data select 0);
				_addExpAmount = _addExpAmount + round(2.5 * (_data select 0));
		};
		//diag_log format["Amount to add to gather experience %1",_addExpAmount];
};
if(vehicle player != player) exitWith {/*hint localize "STR_NOTF_GatherVeh";*/};

_diff = [_gather,_val,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
if(_diff == 0) exitWith {hint localize "STR_NOTF_InvFull"};
life_action_inUse = true;
life_action_gather = true;

for "_i" from 0 to 2 do
{
player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
sleep _time;
};
 
if(([true,_gather,_diff] call life_fnc_handleInv)) then {
			_itemName = [([_gather,0] call life_fnc_varHandle)] call life_fnc_varToStr;
			titleText[format[localize "STR_NOTF_Gather_Success",_itemName,_diff],"PLAIN"];
			if( _profName != "" ) then {
				[_profName,_addExpAmount] call life_fnc_addExp;
			};
};
 
life_action_inUse = false;
life_action_gather = false;
//[8] call SOCK_fnc_updatePartial;
/*
life_action_inUse = true;
life_action_gather = true;
for "_i" from 0 to 2 do
{
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
	sleep 2.5;
};

		if(([true,_gather,_diff] call life_fnc_handleInv)) then
		{
			_itemName = [([_gather,0] call life_fnc_varHandle)] call life_fnc_varToStr;
			titleText[format[localize "STR_NOTF_Gather_Success",_itemName,_diff],"PLAIN"];
			//life_humanity = life_humanity + 15;
		};

life_action_inUse = false;
life_action_gather = false;
*/