/*
File: fn_isFuelTruck.sqf
Author: Johlandabee
Date: 12.01.2015
*/
private["_vehicle","_vehicleType","_fuelTruckCfg","_return"];
_vehicle = [_this,0,Objnull,[Objnull]] call BIS_fnc_param;
if(isNull _vehicle) exitWith {};
_return = false;
_vehicleType = typeOf _vehicle;
_fuelTruckCfg = [] call life_fnc_fuelTruckCfg;
if(_vehicleType in (_fuelTruckCfg select 0)) then {
_return = true;
};
_return;