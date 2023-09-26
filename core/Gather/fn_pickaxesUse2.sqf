/*
	File: fn_pickaxeUse.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main functionality for pickaxe in mining.
*/
closeDialog 0;
private["_mine",
	"_itemWeight","_diff","_itemName","_val","_random","_randomcopper",
	"_randomiron","_randomcoal",
	"_randomsaf","_randomdia","_randomtitan","_randomgold"];
_random = [0,100] call life_fnc_randomRound;
switch(true) do
{
	case (_random <= 35): //30% default market change value (strong version)
	{
		{
		_randomcopper ="rock";
		_randomiron ="rock";
		_randomiron ="rock";
		_randomsaf ="rock";
		_randomdia ="rock";
		_randomtitan ="rock";
		_randomgold ="rock";
		
		};
	};
	case (_random <= 40): //30% default market change value (strong version)
	{
		{
		_randomcopper ="dinobone";
		_randomiron ="dinobone";
		_randomcoal ="dinobone";
		_randomsaf ="dinobone";
		_randomdia ="dinobone";
		_randomtitan ="dinobone";
		_randomgold ="dinobone";
		};
	};
	case (_random <= 100): //30% default market change value (strong version)
	{
		{
		_randomcopper ="copperore";
		_randomiron ="ironore";
		_randomcoal ="coal";
		_randomsaf ="safiru";
		_randomdia ="diamond";
		_randomtitan ="titan";
		_randomgold ="goldore";
		};
	};
};
switch (true) do
{
	case (player distance (getMarkerPos "sb_2") < 30): {_mine = _randomcopper; _val = round(random 3)+10;};
	case (player distance (getMarkerPos "sb_1") < 30): {_mine = _randomiron; _val = round(random 3)+10;};
	case (player distance (getMarkerPos "salt_1") < 50) : {_mine = "salt"; _val = 2;};
	case (player distance (getMarkerPos "sand_1") < 50) : {_mine = "sand"; _val = round(random 3)+10;};
	case (player distance (getMarkerPos "oil_1") < 40) : {_mine = "oilu"; _val = round(random 3)+10;};
	case (player distance (getMarkerPos "oil_2") < 40) : {_mine = "oilu"; _val = round(random 3)+10;};
	case (player distance (getMarkerPos "sb_3") < 15): {_mine =_randomcoal; _val = round(random 3)+10;};
	case (player distance (getMarkerPos "sb_4") < 15): {_mine =_randomsaf; _val = round(random 3)+10;};
	case (player distance (getMarkerPos "sb_6") < 15): {_mine =_randomdia; _val = round(random 3)+10;};
	case (player distance (getMarkerPos "sb_7") < 15): {_mine =_randomtitan; _val = round(random 3)+10;};
	case (player distance (getMarkerPos "sb_8") < 15): {_mine =_randomgold; _val = round(random 3)+10;};
	default {_mine = "";};
};
//Mine check

if(_mine == "") exitWith {};
if(vehicle player != player) exitWith {hint localize "STR_ISTR_Pick_MineVeh";};

_diff = [_mine,_val,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
if(_diff == 0) exitWith {hint localize "STR_NOTF_InvFull"};
life_action_inUse = true;
for "_i" from 0 to 2 do
{
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
	sleep 2.5;
};

if(([true,_mine,_diff] call life_fnc_handleInv)) then
{
	_itemName = [([_mine,0] call life_fnc_varHandle)] call life_fnc_varToStr;
	titleText[format[localize "STR_ISTR_Pick_Success",_itemName,_diff],"PLAIN"];
};

life_action_inUse = false;