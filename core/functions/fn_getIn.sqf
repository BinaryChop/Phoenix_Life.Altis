/*
	File: fn_getIn.sqf
	Author: Rayner von der Lampe
	4.12.14 ImpulZ Community
	Description: Get in of Vehicles and Holster Weapon and Lock Car
*/
private ["_vcls","_vcl"];	
_vcls = nearestobjects [getpos player, ["LandVehicle", "Air", "ship"], 7];
_vcl = _vcls select 0;
if(_vcl emptyPositions "Driver" > 0)exitwith {player action ["getInDriver", _vcl]};
if(_vcl emptyPositions "Gunner" > 0)exitwith {player action ["getInGunner", _vcl]};
if(_vcl emptyPositions "Commander" > 0)exitwith{player action ["getInCommander", _vcl]};
if(_vcl emptyPositions "Driver" < 1)exitwith {player action ["getInCargo", _vcl];};

