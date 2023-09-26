private ["_veh"];
_veh = vehicle player;

if(_veh in life_vehicles) then
{
	hint "Du lädst deine Batterie.";
	while {_veh in life_vehicles && player distance _veh < 3} do
	{
		if(life_battery < 100) then
		{
			life_battery = life_battery + 1;
			sleep 2;
			[] call life_fnc_hudUpdate;
		}else{
			hint "Deine Batterie ist voll.";
		};
	};

	if(player distance _veh > 3) then
	{
		hint "Du hast das Fahrzeug verlassen."; 
	};
}else{
	hint "Du musst in einem Auto sein um deine Batterie zu laden.";
};