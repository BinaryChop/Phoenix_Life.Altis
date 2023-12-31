/*
	File: fn_vehicleColorCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for vehicle colors.
*/
#include <macro.h>

private["_vehicle","_ret","_path"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
if(_vehicle == "") exitWith {[]};
_ret = [];

switch (_vehicle) do
{	

	case "B_Truck_01_mover_F" :
	{
		_ret = 
		[
			["skins\vehicle\road\police\Polizei_hemett_01.paa","cop","skins\vehicle\road\police\Polizei_hemett_02.paa"]/*,
			["skins\vehicle\road\police\Polizei_hemett_01.paa","adac","skins\vehicle\road\police\hemtt_mover_adac.jpg"]*/
		];
		
	};
	
	case "I_MRAP_03_F" :
	{
		_ret = 
		[
			["skins\vehicle\road\police\strider_sek.paa","cop"]
		];
	};
	
	case "I_MRAP_03_hmg_F" :
	{
		_ret = 
		[
			["skins\vehicle\road\police\strider_sek.paa","cop"]
		];
	};
	
	case "O_MRAP_02_F" :
	{
		_ret = 
		[
			["skins\vehicle\road\civ\Ifrit\civ_ifrit_1.jpg","reb","skins\vehicle\road\civ\Ifrit\civ_ifrit_2.jpg"]
		];
	};
	
	case "I_Heli_Transport_02_F":
	{
		_path = "\a3\air_f_beta\Heli_Transport_02\Data\Skins\";
		_ret =
		[
			[_path + "heli_transport_02_1_ion_co.paa","civ",_path + "heli_transport_02_2_ion_co.paa",_path + "heli_transport_02_3_ion_co.paa"],
			[_path + "heli_transport_02_1_dahoman_co.paa","civ",_path + "heli_transport_02_2_dahoman_co.paa",_path + "heli_transport_02_3_dahoman_co.paa"]
		];
	};
	
	case "C_Hatchback_01_sport_F":
	{
		_path = "\a3\soft_f_gamma\Hatchback_01\data\";
		_ret =
		[
			[_path + "hatchback_01_ext_sport01_co.paa","civ"],
			[_path + "hatchback_01_ext_sport02_co.paa","civ"],
			[_path + "hatchback_01_ext_sport03_co.paa","civ"],
			[_path + "hatchback_01_ext_sport04_co.paa","civ"],
			[_path + "hatchback_01_ext_sport05_co.paa","civ"],
			[_path + "hatchback_01_ext_sport06_co.paa","civ"],
			["skins\vehicle\road\police\cop_german.paa","cop"],
			["skins\vehicle\road\medic\notarztspeed.jpg","med"]
		];
	};
		
	case "C_Offroad_01_F":
	{
		_ret = 
		[
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa","civ"], 
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa","civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE02_CO.paa","civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE03_CO.paa","civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE04_CO.paa","civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE05_CO.paa","civ"],
			["skins\vehicle\road\civ\Offroad\dodge_offroad.jpg","civ"],
			["skins\vehicle\road\civ\Offroad\simmi_offroad.jpg","civ"],
			["skins\vehicle\road\police\cop_offroad.paa","cop"],/*,
			["skins\vehicle\air\medic\offroad_adac.jpg","adac"]*/
			["skins\vehicle\road\akj\akj_offroad.paa","cop"]
		];
		/*if(playerside == west && __GETC__(life_coplevel) == 1 ) then
		{
		_ret =
		[
			["skins\vehicle\road\akj\akj_offroad.paa","cop"]
		];
		};*/
	};
	
	case "C_Hatchback_01_F":
	{
		_ret =
		[
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base01_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base02_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base03_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base04_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base06_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base07_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base08_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base09_co.paa","civ"],
			["skins\vehicle\road\civ\Hatchback\hatchback_pimp.jpg","civ"],
			["skins\vehicle\road\civ\Hatchback\monstersport.jpg","civ"]
		];
	};
	
	case "C_SUV_01_F":
	{
		_ret =
		[
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_02_co.paa","cop"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_03_co.paa","civ"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_04_co.paa","civ"],
			["skins\vehicle\road\civ\SUV\Sticker.jpg","civ"],
			["skins\vehicle\road\civ\SUV\digi_camo.jpg","civ"],
			["skins\vehicle\road\police\cop_suv.paa","cop"],
			["skins\vehicle\road\medic\suvnotarzt.paa","med"]
		];
	};
	
	case "C_Van_01_box_F":
	{
		_ret = 
		[
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"],
			["skins\vehicle\road\medic\RTW1.jpg","med","skins\vehicle\road\medic\RTW02.paa"]
			
		];
	};
	
	case "C_Van_01_transport_F":
	{
		_ret = 
		[
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"]
		];
	};
	
	case "B_Quadbike_01_F":
	{
		_ret = 
		[
			["\A3\Soft_F\Quadbike_01\Data\Quadbike_01_co.paa","cop"],
			["\A3\Soft_F\Quadbike_01\Data\quadbike_01_opfor_co.paa","reb"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_black_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_blue_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_red_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_white_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_indp_co.paa","civ"],
			["\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa","civ"],
			["\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa","reb"]
		];
	};
	
	case "B_Heli_Light_01_F":
	{
		_ret = 
		[
			["skins\vehicle\air\civ\hummingbird\civ_hummingbird_redbull.jpg","civ"],
			["skins\vehicle\air\civ\hummingbird\hummingbird_monster.jpg","civ"],
			["skins\vehicle\air\civ\hummingbird\heli_light_01_weed.jpg","civ"],
			["skins\vehicle\air\civ\hummingbird\heli_reb_light_co.jpg","reb"],
			["skins\vehicle\air\police\heli_police_light_co.paa","cop"]
		];
	};
	
	case "I_Heli_light_03_unarmed_F":
	{
		_ret = 
		[
			["skins\vehicle\air\police\police_hellcat.paa","cop"],
			["skins\vehicle\air\medic\hellcat\notarzt_hellcat.paa","med"]
		];
	};
	
	case "O_Heli_Light_02_unarmed_F":
	{	if (playerSide == east) then {

			_ret = 
		[
			["skins\vehicle\air\medic\orca\orca_adac.paa","adac"]
		];
		}else{
		_ret = 
		[	
			

			["skins\vehicle\air\civ\orca\orca_lila.jpg","civ"],
			["skins\vehicle\air\civ\orca\orca_rot.jpg","civ"],
			["skins\vehicle\air\medic\orca\medic_orca.paa","med"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_co.paa","fed"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_civilian_co.paa","civ"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_indp_co.paa","donate"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_opfor_co.paa","reb"]
			//["skins\vehicle\air\police\polizei_orca_gruen.paa","cop"]
		];
		};
	};	
	
	case "B_MRAP_01_F":
	{
		_ret = 
		[
			["skins\vehicle\road\police\sek_van_co.paa","cop","skins\vehicle\road\police\sek_van_co2.paa"],
			["skins\vehicle\road\police\polizei.paa","cop","skins\vehicle\road\police\polizei_van_co2.paa"],
			["skins\vehicle\road\civ\Hunter\rebell_hunter.jpg","reb","icons\images\civilian\Hunter\rebell_hunter2.jpg"]
		];
	};
	
	case "B_MRAP_01_hmg_F":
	{
		_ret = 
		[
			["skins\vehicle\road\police\sek_van_co.paa","cop","skins\vehicle\road\police\sek_van_co2.paa"],
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};
	
	case "I_Truck_02_covered_F":
	{
		_ret = 
		[
			["skins\vehicle\road\civ\Zamak\zamak_blue.jpg","civ","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"],
			["skins\vehicle\road\civ\Zamak\zamak_green.jpg","civ","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"],
			["skins\vehicle\road\civ\Zamak\zamak_orange.jpg","civ","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"],
			["skins\vehicle\road\medic\zamak\medic_zamak.paa","med","skins\vehicle\road\medic\medic_zamak2.paa"]
		];
	};
	
	case "I_Truck_02_transport_F":
	{
		_ret = 
		[
			["skins\vehicle\road\civ\Zamak\zamak_blue.jpg","civ","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"],
			["skins\vehicle\road\civ\Zamak\zamak_green.jpg","civ","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"],
			["skins\vehicle\road\civ\Zamak\zamak_orange.jpg","civ","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"]
		];
	};
	
	case "B_APC_Wheeled_01_cannon_F":
	{
		_ret = 
		[
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};
	
	case "O_Heli_Attack_02_black_F":
	{
		_ret = 
		[
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};
	
	case "B_Heli_Transport_01_F":
	{
		_ret = 
		[
			["skins\vehicle\air\police\cop_ghosthawk_1.paa","cop","skins\vehicle\air\police\cop_ghosthawk_2.paa"],
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};
};

_ret;