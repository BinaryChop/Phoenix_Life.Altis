#include <macro.h>
/*
	File: fn_p_openMenu.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Opens the players virtual inventory menu
*/
if(!alive player || dialog) exitWith {}; //Prevent them from opening this for exploits while dead.
createDialog "playerSettings";
disableSerialization;

switch(playerSide) do
{
	case west: 
	{
		ctrlShow[2011,false];
		ctrlShow[2026,false];
	};
	
	case civilian:
	{
		ctrlShow[2012,false];
		ctrlShow[9800,false];
	};
	
	case independent:
	{
		ctrlShow[2012,false];
		ctrlShow[2011,false];
		ctrlShow[9800,false];
		ctrlShow[2026,false];
	};
	case east: 
	{
		ctrlShow[2011,false];
		ctrlShow[2026,false];
	};
};

if(__GETC__(life_adminlevel) < 2) then
{
	ctrlShow[2020,false];
	ctrlShow[2021,false];
};

if(__GETC__(life_coplevel) < 2) then
{
	ctrlShow[9800,false];
};

[] call life_fnc_p_updateMenu;

if(__GETC__(life_adminlevel) < 2) then
{
	ctrlShow[2020,false];
	ctrlShow[2021,false];
};