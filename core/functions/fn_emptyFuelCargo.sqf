
    /*
    File: fn_emptyFuelCargo.sqf
    Author: Johlandabee
    Date: 14.01.2015
    */
    private ["_vehicle"];
    _vehicle = [_this,0,Objnull,[Objnull]] call BIS_fnc_param;
    if(isNull _vehicle) exitWith {};
    _vehicle setFuelCargo 0;
