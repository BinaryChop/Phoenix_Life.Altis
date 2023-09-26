#include <macro.h>
/*
	File: fn_cellphone.sqf
	/arma3/MPMissions/Altis_Life.Altis/core/pmenu
	Author: Alan
	Restrain edit by Rayner von der Lampe
	Description:
	Opens the cellphone menu?
*/
private[/*"_display",*/"_units","_type"];

disableSerialization;
//waitUntil {!isNull findDisplay 3000};
//_display = findDisplay 3000;
_units = _display displayCtrl 3004;

ctrlSetText [3003, ""];
lbClear _units;

if(player getVariable["restrained",false]) then 
{	
	closedialog 0;
	hint "Du kommst nicht an dein Telefon!";
};	

if("ItemRadio" in assignedItems player) then {
	if(life_battery < 2) exitWith {hint "Deine Batterie ist leer."};
	createDialog "Life_my_smartphone";
}else{
	hint parseText format ["<t size='1.30' font='puristaMedium' align='center' color='#0D82DF'>Kein Handy</t><br/><br/>
	<t size='0.90 'font='puristaLight' align='left'>Du musst ein Handy (Radio) besitzen um dein Handy zu benutzen. Du kannst eines in einem Markt kaufen.</t><br/>"];
};



if((__GETC__(life_adminlevel) < 1)) then
{
	ctrlShow[3020,false];
	ctrlShow[3021,false];
};
{
	if(alive _x && _x != player) then
	{
		switch (side _x) do
		{
			case west: {_type = "Cop"};
			case civilian: {_type = "Civ"};
			case independent: {_type = "Med"};
			case east: {_type = "Adac"};
		};
		_units lbAdd format["%1 (%2)",_x getVariable["realname",name _x],_type];
		_units lbSetData [(lbSize _units)-1,str(_x)];
	};
} foreach playableUnits;

lbSetCurSel [3004,0];