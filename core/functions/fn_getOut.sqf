/*
	File: fn_getOut.sqf
	Author: Rayner von der Lampe
	4.12.14 ImpulZ Community
	Description: Get out of Cars and Holster Weapon and Lock Car
*/
private["_veh","_locked"];
_veh = vehicle player;
_locked = locked _veh;

		
if(!(vehicle player isKindOf "LandVehicle")) exitWith {hint "Nur aus Autos möglich" };
if((player getVariable["restrained",FALSE])) exitWith {hint "Du bist gefesselt!"};
if(_locked == 2) exitWith {hint "Das Fahrzeug ist abgeschlossen!"};
		[] spawn
		{
				player action ["engineOff", vehicle player];
				player action ["Eject",vehicle player];
				sleep 1;	
				life_curWep_h = currentWeapon player;
				player action ["SwitchWeapon", player, player, 100];
				player switchcamera cameraView;
		};			

			
		