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
	"_randomsaf","_randomdia"];
_random = [0,600] call life_fnc_randomRound;
if (_random <= 3) then //30% default market change value (strong version)

	{
		_randomcopper ="dinobone";
		_randomiron ="dinobone";
		_randomcoal ="dinobone";
		_randomsaf ="dinobone";
		_randomdia ="dinobone";
	};
if (_random >= 4 && _random <= 399) then //30% default market change value (strong version)
	
{

		_randomcopper ="copperore";
		_randomiron ="ironore";
		_randomcoal ="coal";
		_randomsaf ="safiru";
		_randomdia ="diamond";
		
};

if (_random >= 400) then //30% default market change value (strong version)
	{
		_randomcopper ="rock";
		_randomiron ="rock";
		_randomcoal ="rock";
		_randomsaf ="rock";
		_randomdia ="rock";		
	};
switch (true) do
{
	case (player distance (getMarkerPos "sb_1") < 30): {_mine = _randomiron; _val = round(random 3)+5;};
	case (player distance (getMarkerPos "sb_2") < 30): {_mine = _randomcopper; _val = round(random 3)+5;};
	case (player distance (getMarkerPos "sb_3") < 15): {_mine =_randomcoal; _val = round(random 3)+5;};
	case (player distance (getMarkerPos "salt_1") < 50) : {_mine = "salt"; _val = 2;};
	case (player distance (getMarkerPos "sand_1") < 50) : {_mine = "sand"; _val = round(random 3)+5;};
	case (player distance (getMarkerPos "oil_1") < 40) : {_mine = "oilu"; _val = round(random 3)+5;};
	case (player distance (getMarkerPos "oil_2") < 40) : {_mine = "oilu"; _val = round(random 3)+5;};
	case (player distance (getMarkerPos "sb_5") < 15): {_mine =_randomsaf; _val = round(random 3)+5;};
	case (player distance (getMarkerPos "sb_6") < 15): {_mine =_randomdia; _val = round(random 3)+5;};
	default {_mine = "";};
};
//Mine check
if(_mine == "") exitWith {};
if(vehicle player != player) exitWith {};

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