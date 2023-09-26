/*
	File: fn_vehicleWeightCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for vehicle weight.
*/
private["_className"];
_className = [_this,0,"",[""]] call BIS_fnc_param;

switch (_className) do
{	
	case "B_Quadbike_01_F": {500};						//Quad
	case "C_Hatchback_01_sport_F": {1000};               //Sportwagen
	case "C_Hatchback_01_F": {1200};                     //Sportwagen
	case "C_SUV_01_F": {1500};                           //Suv
	case "B_G_Offroad_01_F": {700};                     //Offroad HMG
	case "C_Offroad_01_F": {1900};                       //Offroad
	case "C_Van_01_transport_F": {4000};                //Pritche
	case "C_Van_01_box_F": {4900};  				 	//Box
	case "C_Van_01_fuel_F": {5500};  				 	//Van Fuel
	case "I_Truck_02_transport_F": {8000};              //Zamak Pritsche
	case "I_Truck_02_covered_F": {10000};                //Zamak Plane
	case "O_Truck_03_transport_F": {15000};              //Tempest Pritsche
	case "O_Truck_03_covered_F": {18000};                //Tempest Plane
	case "O_Truck_03_repair_F": {18000};                  //Tempest reperatur
	case "O_Truck_03_device_F": {13000};                 //Tempes Erntegerät
	case "O_Truck_02_fuel_F": {17000};                 //Tempes Erntegerät
	case "O_Truck_03_fuel_F": {22000};                 //Tempes Erntegerät
	case "B_Truck_01_transport_F": {24000};              //Hemett Pritsche
	case "B_Truck_01_covered_F": {28000};                //Hemett Plane
	case "B_Truck_01_box_F": {32000};                    //Hemett
	case "B_Truck_01_fuel_F": {28000};                    //Hemett
	case "B_Truck_01_mover_F": {5000};                  //Hemett Abschleppwagen
	case "C_Boat_Civil_01_F": {1800};                    //
	case "C_Boat_Civil_01_police_F": {1500};             ///Boot
	case "C_Boat_Civil_01_rescue_F": {1500};             //
	case "C_Rubberboat": {500};                         //
	case "B_MRAP_01_F": {700};                          //Hunter cop
	case "O_MRAP_02_F": {700};                          //Ifrit
	case "I_MRAP_03_F": {700};                          //Sriker
	case "B_Heli_Light_01_F": {960};                    //Littel Bird
	case "O_Heli_Light_02_unarmed_F": {2400};           //Orca
	case "O_Boat_Armed_01_hmg_F": {850};                ///////////////
	case "B_Boat_Armed_01_minigun_F": {850};            ///////////////
	case "I_Boat_Armed_01_minigun_F": {850};            ///////////////
	case "B_G_Boat_Transport_01_F": {850};              //Boot
	case "B_Boat_Transport_01_F": {1500};                ///////////////
	case "I_Heli_Transport_02_F": {10640};               //Mohak
	case "Land_WaterTank_F": {2100};                    //Wassertank
	case "Box_NATO_AmmoVeh_F": {1150};                  ////////
	case "Land_Cargo20_blue_F": {1300};                 ////////
	case "Land_Cargo40_blue_F": {1750};                 ////////
	case "Land_CargoBox_V1_F": {50000};
	case "Box_IND_Grenades_F": {3500};
	case "B_supplyCrate_F": {7000};
	default {-1};
};