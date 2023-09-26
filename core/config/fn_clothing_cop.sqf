#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Phoenix Polizei Bekleidung"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
	    if(__GETC__(life_coplevel) == 1) then
		{
			_ret set[count _ret,["U_B_CombatUniform_mcam","AKJ",350]];
		};	
		
		if(__GETC__(life_coplevel) == 2) then
		{
			_ret set[count _ret,["U_Rangemaster","Polizeibeamter",350]];
		};
		
		if(__GETC__(life_coplevel) == 3) then
		{
			_ret set[count _ret,["U_Rangemaster","Polizeibeamter",350]];
		};
		
		if(__GETC__(life_coplevel) == 4) then
		{
			_ret set[count _ret,["U_Rangemaster","Polizeibeamter",350]];
		};
		
		if(__GETC__(life_coplevel) == 5) then
		{
			_ret set[count _ret,["U_B_CombatUniform_mcam","Teamleiter",350]];
		};
		
		if(__GETC__(life_coplevel) == 6) then
		{
			_ret set[count _ret,["U_B_CombatUniform_mcam","Ausbilder",350]];
		};
		
		if(__GETC__(life_coplevel) == 7) then
		{
			_ret set[count _ret,["U_B_CombatUniform_mcam","SEK",350]];
			_ret set[count _ret,["U_B_FullGhillie_ard",nil,350]];
			_ret set[count _ret,["U_B_FullGhillie_lsh",nil,350]];
			_ret set[count _ret,["U_B_FullGhillie_sard",nil,350]];
			_ret set[count _ret,["U_O_FullGhillie_ard",nil,350]];
			_ret set[count _ret,["U_O_FullGhillie_lsh",nil,350]];
			_ret set[count _ret,["U_O_FullGhillie_sard",nil,350]];
			_ret set[count _ret,["U_I_FullGhillie_ard",nil,350]];
			_ret set[count _ret,["U_I_FullGhillie_lsh",nil,350]];
			_ret set[count _ret,["U_I_FullGhillie_sard",nil,350]];
			_ret set[count _ret,["V_PlateCarrierGL_blk",nil,350]];
			_ret set[count _ret,["V_PlateCarrierIAGL_dgtl",nil,350]];
			_ret set[count _ret,["V_PlateCarrierSpec_blk",nil,350]];
			

		};
		if(__GETC__(life_coplevel) == 8) then
		{
			_ret set[count _ret,["U_B_CombatUniform_mcam","SEK Leiter",350]];
			_ret set[count _ret,["U_B_CombatUniform_mcam","SEK Leiter",350]];
			_ret set[count _ret,["U_B_FullGhillie_ard","SEK Leiter",350]];
			_ret set[count _ret,["U_B_FullGhillie_lsh","SEK Leiter",350]];
			_ret set[count _ret,["U_B_FullGhillie_sard","SEK Leiter",350]];
			_ret set[count _ret,["U_O_FullGhillie_ard","SEK Leiter",350]];
			_ret set[count _ret,["U_O_FullGhillie_lsh","SEK Leiter",350]];
			_ret set[count _ret,["U_O_FullGhillie_sard","SEK Leiter",350]];
			_ret set[count _ret,["U_I_FullGhillie_ard","SEK Leiter",350]];
			_ret set[count _ret,["U_I_FullGhillie_lsh","SEK Leiter",350]];
			_ret set[count _ret,["U_I_FullGhillie_sard","SEK Leiter",350]];
		};
		
		if(__GETC__(life_coplevel) == 9) then
		{
			_ret set[count _ret,["U_B_CombatUniform_mcam","Teamchef",350]];
		};
	};
	
	//Hats - Edit(Cilith)
	case 1:
	{
		if(__GETC__(life_coplevel) >= 1) then
		{
			_ret set[count _ret,["H_PilotHelmetFighter_B","Gasmaske",1000]];
			_ret set[count _ret,["H_Beret_blk","Barett",0]];
		};
				if(__GETC__(life_coplevel) == 4) then
		{
			_ret set[count _ret,["H_Beret_02","Barett",0]];
		};
				if(__GETC__(life_coplevel) == 5) then
		{
			_ret set[count _ret,["H_Watchcap_blk","Beanie",0]];
			_ret set[count _ret,["H_Beret_Colonel","Barett",0]];
		};
				if(__GETC__(life_coplevel) == 6) then
		{
			_ret set[count _ret,["H_Beret_Colonel","Barett",0]];
		};
				if(__GETC__(life_coplevel) == 7) then
		{
			_ret set[count _ret,["H_Watchcap_blk","Beanie",0]];
			_ret set[count _ret,["H_Beret_Colonel","Barett",0]];
		};
				if(__GETC__(life_coplevel) == 8) then
		{
			_ret set[count _ret,["H_Beret_Colonel","Barett",0]];
		};
	};
	
	//Glasses
	case 2:
	{
		_ret = 
		[
			["G_Aviator",nil,75],
			["G_Spectacles",nil,75],
			["G_Spectacles_Tinted",nil,75]
		];
			if(__GETC__(life_coplevel) >= 3) then
		{
			_ret set[count _ret,["G_Diving",nil,100]];
		};
			if(__GETC__(life_coplevel) >= 4) then
		{
			_ret set[count _ret,["G_Balaclava_blk",nil,100]];
			_ret set[count _ret,["G_Sport_Blackred",nil,100]];
			_ret set[count _ret,["G_Sport_Checkered",nil,100]];
			_ret set[count _ret,["G_Sport_Blackyellow",nil,100]];
			_ret set[count _ret,["G_Sport_BlackWhite",nil,100]];
			_ret set[count _ret,["G_Aviator",nil,100]];
			_ret set[count _ret,["G_Squares",nil,100]];
			_ret set[count _ret,["G_Lowprofile",nil,100]];
		};
			if(__GETC__(life_coplevel) >= 6) then
		{
			_ret set[count _ret,["G_Balaclava_blk",nil,100]];
		};
	};
	
	//Vest - Edit(Cilith)
	case 3:
	{
		_ret set[count _ret,["V_Rangemaster_belt",nil,800]];
		
		if(__GETC__(life_coplevel) == 1) then
		{
			_ret set[count _ret,["V_TacVest_blk",nil,1500]];
			_ret set[count _ret,["V_TacVestIR_blk",nil,1500]];
			_ret set[count _ret,["V_PlateCarrier1_blk",nil,1500]];
		};
		
		if(__GETC__(life_coplevel) >= 2) then
		{
			_ret set[count _ret,["V_TacVest_blk_POLICE",nil,1500]];
		};

		if(__GETC__(life_coplevel) >= 3) then
		{
			_ret set[count _ret,["V_RebreatherB","Sauerstoffflasche",5500]];
		};
		
		if(__GETC__(life_coplevel) >= 4) then
		{
			_ret set[count _ret,["V_TacVestIR_blk",nil,1500]];
		};
		
		if(__GETC__(life_coplevel) >= 6) then
		{
			_ret set[count _ret,["V_PlateCarrier1_blk",nil,1500]];
		};
	};
	
	//Backpacks
	case 4:
	{
		_ret =
		[
			["B_Carryall_ocamo",nil,2500]
		];
	};
};

_ret;