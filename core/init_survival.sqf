[] spawn  {
	private["_fnc_food","_fnc_water","_fnc_battery"];
	_fnc_food = 
	{
		if(life_hunger < 2) then {player setDamage 1; hint localize "STR_NOTF_EatMSG_Death";}
		else
		{
		life_hunger = life_hunger - 1;
		[] call life_fnc_hudUpdate;
		if(life_hunger < 2) then {player setDamage 1; hint localize "STR_NOTF_EatMSG_Death";};
		switch(life_hunger) do {
			case 30: {hint localize "STR_NOTF_EatMSG_1";};
			case 20: {hint localize "STR_NOTF_EatMSG_2";};
			case 10: {hint localize "STR_NOTF_EatMSG_3";player setFatigue 1;};
			};
		};
	};
	while{true} do
	{
		sleep 50;
		[] call _fnc_food;
	};
};
[] spawn  {
	private["_fnc_water"];	
	_fnc_water = 
	{
		if(life_thirst < 2) then {player setDamage 1; hint localize "STR_NOTF_DrinkMSG_Death";}
		else
		{
			life_thirst = life_thirst - 1;
			[] call life_fnc_hudUpdate;
			if(life_thirst < 2) then {player setDamage 1; hint localize "STR_NOTF_DrinkMSG_Death";};
			switch(life_thirst) do 
			{
				case 30: {hint localize "STR_NOTF_DrinkMSG_1";};
				case 20: {hint localize "STR_NOTF_DrinkMSG_2"; player setFatigue 1;};
				case 10: {hint localize "STR_NOTF_DrinkMSG_3"; player setFatigue 1;};
			};
		};
	};
	
	while{true} do
	{
		sleep 50;
		[] call _fnc_water;
	};
};

[] spawn  {
	private["_fnc_battery"];
	_fnc_battery =                                  
	{
		if(life_battery < 2) then {	
			hint "Deine Batterie ist leer.";
		} else {
			life_battery = life_battery - 1;
			[] call life_fnc_hudUpdate;
			switch(life_battery) do 
			{
				case 50: {hint "Deine Batterie hat noch 50%.";};
				case 20: {hint "Deine Batterie hat noch 20%.";};
				case 10: {hint "Deine Batterie hat noch 10%. Lade deine Batterie oder Tausche sie aus.";};
			};
		};
	};

	while{true} do
	{
		if("ItemRadio" in assignedItems player) then {
		sleep 39;
		[] call _fnc_battery;
		};
	};
	/* _fnc_happy =
	{
		if(life_happy < 2) then {hint "Du bist tot unglücklich.";}
		else
		{
			life_happy = life_happy - 10;
			[] call life_fnc_hudUpdate;
			if(life_happy < 2) then {hint "Du bist totunglücklich.";};
			switch(life_happy) do 
			{
				case 40: {hint "Du bist etwas unzufrieden.";};
				case 30: {hint "Du bist unglücklich.";};
				case 20: {hint "Du bist sehr unglücklich.";};
				case 10: {hint "Du bist verdammt deprimiert wenn du nicht bald etwas dagegen tust wirst du nicht mehr arbeiten können.";};
			};
		};
	}; 
	while{true} do
	{
		sleep 240;
		[] call _fnc_happy;
		
	};
	sleep 240;
	[] call _fnc_happy; */

	//part of alcohol system written by [midgetgrimm]
[] spawn
{
	while {true} do
	{
		waitUntil {(life_drink > 0)};
		while{(life_drink > 0)} do {
		
			if(life_drink > 0.08) then {
			"radialBlur" ppEffectEnable true;
			"radialBlur" ppEffectAdjust[0.08, 0,0.35,0.37];
			"radialBlur" ppEffectCommit 3;
			sleep 240;
			life_drink = life_drink - 0.02;
			} else {
			"radialBlur" ppEffectEnable true;
			"radialBlur" ppEffectAdjust[0.05, 0,0.36,0.38];
			"radialBlur" ppEffectCommit 1;
			sleep 180;
			life_drink = life_drink - 0.02;
			};
		};
		
		"radialBlur" ppEffectAdjust  [0,0,0,0];
		"radialBlur" ppEffectCommit 5;
		"radialBlur" ppEffectEnable false;
		life_drink = 0;
		
	};
};
	
};

[] spawn
{
	private["_bp","_load","_cfg"];
	while{true} do
	{
		waitUntil {backpack player != ""};
		_bp = backpack player;
		_cfg = getNumber(configFile >> "CfgVehicles" >> (backpack player) >> "maximumload");
		_load = round(_cfg / 8);
		if(backpack player != "") then { _load = 800; };
		if(backpack player != "" && license_civ_addInv) then { _load = 1000; }; //<-----Add Backpackweight If license is available
		life_maxWeight = life_maxWeightT + _load;
		if(playerSide == west) then {(unitBackpack player) setObjectTextureGlobal [0,""];}; // <---- Backpack invisible for COPS
        if(playerSide == independent) then {(unitBackpack player) setObjectTextureGlobal [0,""];}; // <----- Backpack invisible for MEDS
		waitUntil {backpack player != _bp};
		if(backpack player == "") then 
		{
			life_maxWeight = life_maxWeightT;
		};
	};
};

[] spawn
{
	while {true} do
	{
		sleep 1.5;
		if(life_carryWeight > life_maxWeight && !isForcedWalk player) then {
			player forceWalk true;
			player setFatigue 1;
			hint localize "STR_NOTF_MaxWeight";
		} else {
			if(isForcedWalk player) then {
				player forceWalk false;
			};
		};
	};
};

[] spawn  
{
	private["_walkDis","_myLastPos","_MaxWalk","_runHunger","_runDehydrate"];
	_walkDis = 0;
	_myLastPos = (getPos player select 0) + (getPos player select 1);
	_MaxWalk = 1400;
	while{true} do 
	{
		sleep 0.5;
		if(!alive player) then {_walkDis = 0;}
		else
		{
			_CurPos = (getPos player select 0) + (getPos player select 1);
			if((_CurPos != _myLastPos) && (vehicle player == player)) then
			{
				_walkDis = _walkDis + 1;
				if(_walkDis == _MaxWalk) then
				{
					_walkDis = 0;
					life_thirst = life_thirst - 4;
					life_hunger = life_hunger - 4;
/* 					life_happy = life_happy - 5;
 */					[] call life_fnc_hudUpdate;
				};
			};
			_myLastPos = (getPos player select 0) + (getPos player select 1);
		};
	};
};

// hier werden Sachen eingetragen mit denen man nicht laufen kann [] spawn
{
    while {true} do
    {
        sleep 1.5;
        if(life_inv_uranium2 != 0) then {
            player forceWalk true;
            player setFatigue 1;
            hint "Du transportierst Uranium, da es sehr schwer ist bewegst du dich langsamer!";
        } else {
            if(isForcedWalk player) then {
                player forceWalk false;
            };
        };
    };
};

[] spawn
{
    while {true} do
    {
        private["_damage"];
        sleep 1;
        while {((player distance (getMarkerPos "Warm_Marker") < 150) && (player getVariable["Revive",TRUE]))} do
        {
            if(uniform player == "U_C_Scientist") then
            {
                hint "!!! Du betrittst die Radioaktive Sperrzone !!! Aber dein Schutzanzug schützt dich";
                sleep 5;
            }else
            {
                hint "!!! ACHTUNG RADIOAKTIVE ZONE !!! DU KANNST STERBEN, WENN DU KEINEN SCHUTZANZUG AN HAST";
                _damage = damage player;
                _damage = _damage + 0.1;
                player setDamage (_damage);
                [] call life_fnc_hudUpdate;
                sleep 10;
            };
        };
    };
};
