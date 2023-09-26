#include <macro.h>
/*
	File: fn_craftCfg.sqf
	Author: EdgeKiller

	Description:
	Master configuration file for the crafting menu.

*/
private["_craft","_return"];
_craft = [_this,0,"",[""]] call BIS_fnc_param;
if(_craft == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_craft) do
{
	case "weapon":
	{
		_return = [
				//[Object classname, [item #1,quantity item #1,item #2,quantity item #2]],]
				["hgun_Rook40_F", ["life_inv_plastic",5,"life_inv_steel",3]],
				["hgun_ACPC2_F", ["life_inv_plastic",5,"life_inv_steel",4]],
				["hgun_Pistol_heavy_02_F", ["life_inv_plastic",5,"life_inv_steel",5]],
				["hgun_PDW2000_F", ["life_inv_plastic",5,"life_inv_steel",5]]

			];
		if(__GETC__(life_adminlevel) > 0) then
		{
			_return pushBack
			["SMG_01_F", ["life_inv_water",1]];
		};
	};
	case "ammo":
	{
		_return = [
				["16Rnd_9x21_Mag",["life_inv_patrone",16,"life_inv_plastic",2]],
				["9Rnd_45ACP_Mag",["life_inv_patrone",9,"life_inv_plastic",2]],
				["6Rnd_45ACP_Cylinder",["life_inv_patrone",6,"life_inv_plastic",2]],
				["30Rnd_9x21_Mag",["life_inv_patrone",30,"life_inv_plastic",2]]
		];
	};
	/*case "uniform":
	{
		_return = [
				//[Object classname, [item #1,quantity item #1,item #2,quantity item #2]],]
				["U_IG_Guerilla1_1", ["life_inv_goldbar",1]]
			];
	};
	
	case "backpack":
	{
		_return = [
				//[Object classname, [item #1,quantity item #1,item #2,quantity item #2]],]
				["B_AssaultPack_cbr", ["life_inv_water",2]],
				["B_Kitbag_mcamo", ["life_inv_water",2]],
				["B_TacticalPack_oli", ["life_inv_water",2]],
				["B_FieldPack_ocamo", ["life_inv_water",2]],
				["B_Bergen_sgg", ["life_inv_water",2]],
				["B_Kitbag_cbr", ["life_inv_water",2]],
				["B_Carryall_oli", ["life_inv_water",2]],
				["B_Carryall_khk", ["life_inv_water",2]]
			];
	};*/
	case "kits":
	{
		_return = [
				//[Object classname, [item #1,quantity item #1,item #2,quantity item #2]],]
				["ToolKit", ["life_inv_plastic",4,"life_inv_ironr",3]]
			];
	};

	/*case "item":
	{
		_return = [
				//[Object classname, [item #1,quantity item #1,item #2,quantity item #2]],]
				["life_inv_pickaxe", ["life_inv_goldbar",1]],
				["life_inv_goldbar", ["life_inv_goldbar",1,"life_inv_copperr",1]]
		];
	};*/
};

_return; 