/*
	File: fn_gather1.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main functionality for gathering.
*/
 if(isNil "life_action_gather") then {life_action_gather = false;};
private["_gather","_itemWeight","_diff","_itemName","_val","_resourceZones","_zone","_random","_random1","_random2","_musch","_crap"];
_resourceZones = [
	"apple_1","apple_2","apple_3","apple_4","peaches_1","peaches_2","peaches_3","peaches_4","lsd_1","heroin_1","cocaine_1","weed_1","Birnen_1","Birnen_2","Birnen_3","Birnen_4",
	"food_1_4","food_1_7","food_1_2","food_1_14","food_1_15","food_1_12","food_1_16","food_1_13","food2_1","food_2_2","food_2_4","food_2_4","food1_6","food_1_8","food_1_9","wheat_1","wool_1"];
_zone = "";
if(life_action_gather) exitWith {};
life_action_gather= true;

{
	if(player distance (getMarkerPos _x) < 30) exitWith {_zone = _x;};
} foreach _resourceZones;

if(_zone == "") exitWith {};
_random = round(random 2000);
_musch = [
"muschu","muschu","muschu","muschu","muschu","muschu","muschu","muschu","muschu","muschu","muschu",
"pearl"
];
_random1 = _musch select (floor (random (count _musch)));
_crap = [
"hoergeraet","hoergeraet","hoergeraet","hoergeraet","hoergeraet","hoergeraet",
"hoergeraet","hoergeraet","hoergeraet","hoergeraet","hoergeraet","hoergeraet",
"hoergeraet","hoergeraet","hoergeraet","hoergeraet","hoergeraet","hoergeraet",
"hoergeraet","hoergeraet","hoergeraet","hoergeraet","hoergeraet","hoergeraet",
"hoergeraet","hoergeraet","hoergeraet","hoergeraet","hoergeraet","hoergeraet",
"flaschu","flaschu","flaschu","flaschu","flaschu","flaschu","flaschu","flaschu","flaschu","flaschu",
"flaschu","flaschu","flaschu","flaschu","flaschu","flaschu","flaschu","flaschu","flaschu","flaschu",
"flaschu","flaschu","flaschu","flaschu","flaschu","flaschu","flaschu","flaschu","flaschu","flaschu",
"flaschu","flaschu","flaschu","flaschu","flaschu","flaschu","flaschu","flaschu","flaschu","flaschu",
"flaschu","flaschu","flaschu","flaschu","flaschu","flaschu","flaschu","flaschu","flaschu","flaschu",
"flaschu","flaschu","flaschu","flaschu","flaschu","flaschu","flaschu","flaschu","flaschu","flaschu",
"flaschu","flaschu","flaschu","flaschu","flaschu","flaschu","flaschu","flaschu","flaschu","flaschu",
"flaschu","flaschu","flaschu","flaschu","flaschu","flaschu","flaschu","flaschu","flaschu","flaschu",
"flaschu","flaschu","flaschu","flaschu","flaschu","flaschu","flaschu","flaschu","flaschu","flaschu",
"flaschu","flaschu","flaschu","flaschu","flaschu","flaschu","flaschu","flaschu","flaschu","flaschu",
"cables","cables","cables","cables","cables","cables","cables","cables","cables","cables","cables","cables","cables","cables",
"cables","cables","cables","cables","cables","cables","cables","cables","cables","cables","cables","cables","cables","cables",
"cables","cables","cables","cables","cables","cables","cables","cables","cables","cables","cables","cables","cables","cables",
"cables","cables","cables","cables","cables","cables","cables","cables","cables","cables","cables","cables","cables","cables",
"robo1","robo2","robo3","robo4","robo5","robo6",
"scrapmetal","scrapmetal","scrapmetal","scrapmetal","scrapmetal","scrapmetal","scrapmetal",
"scrapmetal","scrapmetal","scrapmetal","scrapmetal","scrapmetal","scrapmetal","scrapmetal",
"scrapmetal","scrapmetal","scrapmetal","scrapmetal","scrapmetal","scrapmetal","scrapmetal",
"scrapmetal","scrapmetal","scrapmetal","scrapmetal","scrapmetal","scrapmetal","scrapmetal",
"scrapmetal","scrapmetal","scrapmetal","scrapmetal","scrapmetal","scrapmetal","scrapmetal",
"scrapmetal","scrapmetal","scrapmetal","scrapmetal","scrapmetal","scrapmetal","scrapmetal",
"lwatch","lwatch","lwatch","lwatch","lwatch","lwatch","lwatch","lwatch","lwatch","lwatch",
"lwatch","lwatch","lwatch","lwatch","lwatch","lwatch","lwatch","lwatch","lwatch","lwatch",
"lwatch","lwatch","lwatch","lwatch","lwatch","lwatch","lwatch","lwatch","lwatch","lwatch",
"lwatch","lwatch","lwatch","lwatch","lwatch","lwatch","lwatch","lwatch","lwatch","lwatch",
"lwatch","lwatch","lwatch","lwatch","lwatch","lwatch","lwatch","lwatch","lwatch","lwatch",
"lwatch","lwatch","lwatch","lwatch","lwatch","lwatch","lwatch","lwatch","lwatch","lwatch",
"lwatch","lwatch","lwatch","lwatch","lwatch","lwatch","lwatch","lwatch","lwatch","lwatch",
"bppickaxet",
"diamondr",
"luckycookie","luckycookie","luckycookie","luckycookie","luckycookie","luckycookie","luckycookie",
"luckycookie","luckycookie","luckycookie","luckycookie","luckycookie","luckycookie","luckycookie",
"luckycookie","luckycookie","luckycookie","luckycookie","luckycookie","luckycookie","luckycookie",
"luckycookie","luckycookie","luckycookie","luckycookie","luckycookie","luckycookie","luckycookie",
"luckycookie","luckycookie","luckycookie","luckycookie","luckycookie","luckycookie","luckycookie",
"kabelbinder",
"boltcutter",
"woodleg","woodleg","woodleg","woodleg","woodleg","woodleg",
"woodleg","woodleg","woodleg","woodleg","woodleg","woodleg",
"woodleg","woodleg","woodleg","woodleg","woodleg","woodleg",
"woodleg","woodleg","woodleg","woodleg","woodleg","woodleg",
"lighter","lighter","lighter","lighter","lighter",
"lighter","lighter","lighter","lighter","lighter",
"lighter","lighter","lighter","lighter","lighter",
"lighter","lighter","lighter","lighter","lighter",
"calc","calc","calc","calc","calc","calc","calc",
"calc","calc","calc","calc","calc","calc","calc",
"calc","calc","calc","calc","calc","calc","calc",
"calc","calc","calc","calc","calc","calc","calc",
"calc","calc","calc","calc","calc","calc","calc",
"shoki","shoki","shoki","shoki","shoki",
"shoki","shoki","shoki","shoki","shoki",
"shoki","shoki","shoki","shoki","shoki",
"lockpick","lockpick","lockpick","lockpick",
"bpaxet",
"tnt",
"safirp"];
_random2 = _crap select (floor (random (count _crap)));
switch(true) do {
	case (_zone in ["apple_1","apple_2","apple_3","apple_4"]): {_gather = "apple"; _val = round(random 3)+2;};
	case (_zone in ["peaches_1","peaches_2","peaches_3"]): {_gather = "peach"; _val = round(random 4)+2;};
	case (_zone in ["Birnen_1","Birnen_2","Birnen_3","Birnen_4"]): {_gather = "Birnen"; _val = round(random 4)+2;};
	case (_zone in ["heroin_1"]): {_gather = "heroinu"; _val = 2;};
	case (_zone in ["cocaine_1"]): {_gather = "cocaine"; _val = 2;};
	case (_zone in ["weed_1"]): {_gather = "cannabis"; _val = 2;};
	case (_zone in ["lsd_1"]): {_gather = "lsdu"; _val = 2;};
	case (_zone in ["food_1_4","food_1_7","food_1_2"]): {_gather = "trauu"; _val = round(random 4);};
	case (_zone in ["food_1_14","food_1_15","food_1_12","food_1_16","food_1_13"]): {_gather = _random2; _val = 1;};
	case (_zone in ["food_2_1","food_2_2","food_2_4","food_2_4"]): {_gather = _random1; _val = round(random 5);};
	case (_zone in ["food_1_6","food_1_8","food_1_9"]): {_gather = "krabben"; _val = round(random 4)+8;};
	case (_zone in ["wheat_1"]): {_gather = "weizen"; _val = round(random 8)+5;};
	//case (_zone in ["wool_1"]): {_gather = "wool"; _val = round(random 4);};
	
};
if (_gather == "pearl") then {_val = 1};
if (_gather == "flaschu") then {_val = round(random 4)+8;};
if(vehicle player != player) exitWith {};

_diff = [_gather,_val,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
if(_diff == 0) exitWith {hint localize "STR_NOTF_InvFull"};
life_action_inUse = true;
for "_i" from 0 to 2 do
{
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
	sleep 2.5;
};
if(_gather == _random2 && _random > 1200) exitWith {titleText ["Nix Gefunden!", "PLAIN"];};

if(([true,_gather,_diff] call life_fnc_handleInv)) then
{
	_itemName = [([_gather,0] call life_fnc_varHandle)] call life_fnc_varToStr;
	titleText[format[localize "STR_NOTF_Gather_Success",_itemName,_diff],"PLAIN"];
};

life_action_inUse = false;
