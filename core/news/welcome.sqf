/*
	File: welcomecredits.sqf
	Description: Intro in der rechten unteren Ecke.
*/

_onScreenTime = 8;

sleep 7; //Sekunden nach dem joinen sobald das Intro beginnen soll
 
_role1 = "Herzlich Willkommen auf dem Altis Life Server von:";
_role1names = ["www.phoenix-multigaming.de"];
_role2 = "Bitte beachtet, dass sich dieser Server in der Beta Phase befindet!";
_role2names = ["Wenn ihr Bugs findet meldet sie bitte im Forum!"];
_role3 = "Eure Projektleitung";
_role3names = ["Daniel","Rayner von der Lampe","ToWe","MarcMarc"];
_role4 = "Eure Admins";
_role4names = ["Odin","Dan Dansen","Locke","LeChick","Raiden","Rob"];
_role5 = "Scripter";
_role5names = ["Timme"];
_role6 = "Supporter";
_role6names = ["Ayub","DaaVid"];
_role7 = "Forum:";
_role7names = ["www.phoenix-multigaming.de/forum"];
_role8 = "Teamspeak 3:";
_role8names = ["178.33.77.80:2138"];
_role9 = "Beachtet unsere Server Regeln!";
_role9names = ["Viel Spaß"];
{
sleep 2;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t size='0.90' color='#FF0000' align='right'>%1<br /></t>", _memberFunction];
_finalText = _finalText + "<t size='0.75' color='#FFFFFF' align='right'>";
{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
_finalText = _finalText + "</t>";
_onScreenTime + (((count _memberNames) - 1) * 0.9);
[
_finalText,
[safezoneX + safezoneW - 0.8,0.50], //DEFAULT: 0.5,0.35
[safezoneY + safezoneH - 0.8,0.7], //DEFAULT: 0.8,0.7
_onScreenTime,
0.8
] spawn BIS_fnc_dynamicText;
sleep (_onScreenTime);
} forEach [
//The list below should have exactly the same amount of roles as the list above
[_role1, _role1names],
[_role2, _role2names],
[_role3, _role3names],
[_role4, _role4names],
[_role5, _role5names],
[_role6, _role6names],
[_role7, _role7names]
];