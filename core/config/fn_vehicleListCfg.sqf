#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "kart_shop":
	{
		_return = [
			["C_Kart_01_Blu_F",90000],
			["C_Kart_01_Fuel_F",90000],
			["C_Kart_01_Red_F",90000],
			["C_Kart_01_Vrana_F",90000]
		];
	};
	case "med_shop":
	{
		_return = [
		["C_SUV_01_F",7500],
		["C_Van_01_box_F",12550]];
		if(__GETC__(life_mediclevel) > 1) then
		{
			_return set[count _return,
			["C_Hatchback_01_sport_F",15000]];
		};
		if(__GETC__(life_mediclevel) > 3) then
		{
			_return set[count _return,
			["I_Truck_02_covered_F",15000]];
		};
				
	};
	
	case "med_air_hs": 
	{	
		if(__GETC__(life_mediclevel) > 1) then
		{
			_return set[count _return,
			["O_Heli_Light_02_unarmed_F",100000]];
		};
		if(__GETC__(life_mediclevel) > 3) then
		{
			_return set[count _return,
			["I_Heli_light_03_unarmed_F",150000]];
		};
	};
	
	case "civ_car":
	{
		_return = 
		[
			["B_Quadbike_01_F",1800],
			["C_Hatchback_01_F",9600],
			["C_Offroad_01_F",10200],
			["C_SUV_01_F",12500],
			["C_Van_01_transport_F",36000]
		];
	};
	
	case "civ_truck":
	{
		_return =
		[	
			["C_Van_01_fuel_F",50000],
			["C_Van_01_box_F",42000],
			["I_Truck_02_transport_F",94500],
			["I_Truck_02_covered_F",134500],
			["O_Truck_03_transport_F",170000],
			["O_Truck_03_covered_F",270000],
			["B_Truck_01_transport_F",420000],
			["B_Truck_01_covered_F",820000],
			["B_Truck_01_box_F",1200000],
			["O_Truck_03_device_F",20000000],
			["O_Truck_02_fuel_F",800000],
			["O_Truck_03_fuel_F",4000000],
			["B_Truck_01_fuel_F",20000000]
		];	
	};
	
	case "civ_kiste":
	{
		_return =
		[
			["Land_WaterTank_F",155000],
			["Box_NATO_AmmoVeh_F",70000],
			["Land_Cargo20_blue_F",100000],
			["Land_Cargo40_blue_F",115000]
		];
	};
	
	case "kopf_air":
	{
		if(__GETC__(life_coplevel) == 1) then
		{
			_return set[count _return,
			["B_Heli_Light_01_F",200000]];
			_return set[count _return,
			["I_Heli_light_03_unarmed_F",400000]];
		};
	};
	
	case "adac_car":
	{
		if(playerSide == east) then
		{
			_return set[count _return,
			["C_Offroad_01_F",10000]];
		};
		
	};
	case "adac_air":
	{
		if(playerSide == east) then
		{
			
			_return set[count _return,
			["O_Heli_Light_02_unarmed_F",250000]];
		};
	};
	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",2400]
		];
		
		if(license_civ_rebel) then
		{
			_return set[count _return,["B_G_Offroad_01_F",35000]];
			_return set[count _return,["B_MRAP_01_F",600000]];
			_return set[count _return,["O_MRAP_02_F",600000]];
			_return set[count _return,["B_G_Offroad_01_armed_F",750000]];
			_return set[count _return,["O_Truck_03_repair_F",170000]];
			_return set[count _return,["B_Heli_Light_01_F",240000]];
			_return set[count _return,["I_Heli_Transport_02_F",15000000]];
		};
	};
	
	case "cop_car":
	{
		_return set[count _return,
		["C_Offroad_01_F",6000]];
		
		if(__GETC__(life_coplevel) == 1) then
		{
			_return =
			[
				["C_Offroad_01_F",5000]
			];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["C_SUV_01_F",20000]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["C_Hatchback_01_sport_F",30000]];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return,
			["B_MRAP_01_F",150000]];

			_return set[count _return,
			["B_Truck_01_mover_F",25000]];
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_return set[count _return,
			["I_MRAP_03_F",120000]];
		};
		if(__GETC__(life_coplevel) > 6) then
		{
			_return set[count _return,
			["B_MRAP_01_hmg_F",12000]];

			_return set[count _return,
			["B_UGV_01_F",12000]];

			_return set[count _return,
			["B_UAV_01_F",12000]];						
		};

	};
	case "civ_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",240000],
			["O_Heli_Light_02_unarmed_F",1400000],
			["I_Heli_Transport_02_F",15000000]
		];
	};
	
	
	case "cop_air":
	{
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["B_Heli_Light_01_F",25000]];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return,
			["I_Heli_light_03_unarmed_F",250000]];
		};
		if(__GETC__(life_coplevel) > 6) then
		{
			_return set[count _return,
			["B_Heli_Transport_01_F",250000]];
			_return set[count _return,
			["B_Heli_Transport_03_unarmed_F",250000]];
			_return set[count _return,
			["O_Heli_Transport_04_bench_black_F",250000]];
			_return set[count _return,
			["O_Heli_Transport_04_black_F",250000]];
		};
	};
	
	case "cop_airhq":
	{
	    if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["C_Hatchback_01_F",25000]];
			_return set[count _return,
			["C_Offroad_01_F",5000]];
			_return set[count _return,
			["C_SUV_01_F",20000]];
			_return set[count _return,
			["B_Heli_Light_01_F",25000]];
			
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return,
			["I_Heli_light_03_unarmed_F",100000]];
		};
		if(__GETC__(life_coplevel) > 6) then
		{
			_return set[count _return,
			["B_Heli_Transport_01_F",250000]];
			_return set[count _return,
			["B_Heli_Transport_03_F",250000]];
			_return set[count _return,
			["O_Heli_Transport_04_bench_F",250000]];
			_return set[count _return,
			["O_Heli_Transport_04_box_F",250000]];
		};
	};
	
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",22000]
		];
	};

	case "cop_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",3000],
			["C_Boat_Civil_01_police_F",20000],
			["B_Boat_Armed_01_minigun_F",75000],
			["B_SDV_01_F",100000]
		];
	};

};

_return;
