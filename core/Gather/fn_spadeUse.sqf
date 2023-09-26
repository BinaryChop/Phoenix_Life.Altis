 /*
File: fn_spadeUse.sqf
Author: Tonic, Edited  by Disney
 
Description:
Main functionality for Digging Holes.
*/
closeDialog 0;
private["_mine","_itemWeight","_diff","_itemName","_val"];
switch (true) do
{
case (player distance (getMarkerPos "salt_1") < 120) : {_mine = "salt"; _val = 4;};
case (player distance (getMarkerPos "sand_1") < 75) : {_mine = "sand"; _val = 5;};
default {_mine = "";};
};
//Mine check
if(_mine == "") exitWith {hint localize "STR_ISTR_Spad_NotNear"};
if(vehicle player != player) exitWith {hint localize "STR_ISTR_Spad_MineVeh";};
 
_diff = [_mine,_val,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
if(_diff == 0) exitWith {hint localize "STR_NOTF_InvFull"};
life_action_inUse = true;
 
_time = 2;
_profName = [_mine] call life_fnc_profType;
if( _profName != "" ) then
{
_data = missionNamespace getVariable (_profName);
_time = ( 2 - (0.25 * (_data select 0)));
};
 
for "_i" from 0 to 2 do
{
player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
sleep _time;
};
 
 
if(([true,_mine,_diff] call life_fnc_handleInv)) then
{
_itemName = [([_mine,0] call life_fnc_varHandle)] call life_fnc_varToStr;
titleText[format[localize "STR_ISTR_Spad_Success",_itemName,_diff],"PLAIN"];
if( _profName != "" ) then
{
[_profName,3] call life_fnc_addExp;
};
};
 
life_action_inUse = false;
 