/*
	File: fn_playerTags.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Adds the tags above other players heads when close and have visible range.
*/
private["_visible","_position","_nearUnits","_vis","_pos","_near","_name","_icon","_width","_height"];
_nearUnits = (visiblePosition player) nearEntities ["Man",30];
{
	if(player distance _x < 30 && isPlayer _x && _x != player) then {
		_visible = lineIntersects [eyePos player, eyePos _x,player, _x];
		if(!_visible) then {
			_position = visiblePosition _x;
			_position set[2,(getPosATL _x select 2) + 2.2];
			
			_width = 0.7;
			_height = 0.7;
			switch (_x getVariable["coplevel", 0]) do
				
				{
					case (2) : {_name = format["[*] %1", name _x];_icon = MISSION_ROOT + "images\icon_recruit.paa";};
          			case (3) : {_name = format["[**] %1", name _x];_icon = MISSION_ROOT + "images\icon_officer.paa";};
          			case (4) : {_name = format["[***] %1", name _x];_icon = MISSION_ROOT + "images\icon_sergeant.paa";};
          			case (5) : {_name = format["[Teamleiter] %1", name _x];_icon = MISSION_ROOT + "images\icon_deputychief.paa";};
          			case (6) : {_name = format["[Ausbilder] %1", name _x];_icon = MISSION_ROOT + "images\icon_captain.paa";};
          			case (7) : {_name = format["[SEK] %1", name _x];_icon = MISSION_ROOT + "images\icon_lieutenant.paa";};
					case (8) : {_name = format["[SEK-Leiter] %1", name _x];_icon = MISSION_ROOT + "images\icon_chief.paa";};
					case (9) : {_name = format["[Polizeichef] %1", name _x];_icon = MISSION_ROOT + "images\icon_chief.paa";};
          			default {_name = name _x; _icon = ""; _width = 0; _height = 0;}
				};

				if (_x getVariable["coplevel", 0] > 0) then
				{
					_icon = [((_x getVariable["coplevel", 0]) - 1),"texture"] call BIS_fnc_rankParams;
				};

			drawIcon3D [_icon,[1,1,1,1],_position,_width,_height,0,_name,0,0.04];
			
		};
	};
} foreach _nearUnits;