/*
	File: fn_removeLicenses.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Used for stripping certain licenses off of civilians as punishment.
*/
private["_state"];
_state = [_this,0,1,[0]] call BIS_fnc_param;

switch (_state) do
{
	//Death while being wanted
	case 0:
	{
		license_civ_weapon = false;
	};
	
	//Jail licenses
	case 1:
	{
		license_civ_gun = false;
	};
	
	//Remove motor vehicle licenses
	case 2:
	{
		if(license_civ_driver OR license_civ_air OR license_civ_truck OR license_civ_boat) then {
			license_civ_driver = false;
			license_civ_air = false;
			license_civ_truck = false;
			license_civ_boat = false;
			hint localize "STR_Civ_LicenseRemove_1";
		};
	};
	
	//Killing someone while owning a gun license
	case 3:
	{
		if(license_civ_gun) then {
			license_civ_gun = false;
			hint localize "STR_Civ_LicenseRemove_2";
		};
	};
	case 4:
	{
		if(license_civ_geo2) then	{
			license_civ_geo1 = false;
		};
		if(license_civ_geo3) then	{
			license_civ_geo2 = false;
		};
		if(license_civ_midin) then	{
			license_civ_lowin = false;
		};
		if(license_civ_highin) then	{
			license_civ_midin = false;
		};
		if(license_civ_chem2) then	{
			license_civ_chem1 = false;
		};
		if(license_civ_chem3) then	{
			license_civ_chem2 = false;
		};
		if(license_civ_food2) then	{
			license_civ_food1 = false;
		};
		if(license_civ_food3) then	{
			license_civ_food2 = false;
		};
		if(license_civ_edel2) then	{
			license_civ_edel1 = false;
		};
		if(license_civ_drug_2) then	{
			license_civ_drug_1 = false;
		};
		if(license_civ_drug_3) then	{
			license_civ_drug_2 = false;
		};
		if(license_civ_schmuck2) then	{
			license_civ_schmuck1 = false;
		};
	};
	// Revoking Licenses
	
	// Drivers License
	case 5:
	{
		license_civ_driver = false;
		hint "Dir wurde der PKW Führerschein entzogen!";
	};
	// Truck License
	case 6:
	{
		license_civ_truck = false;
		hint  "Dir wurde der LKW Führerschein entzogen!";
	};
	// Pilot License
	case 7:
	{
		license_civ_air = false;
		hint  "Dir wurde der Pilotnschein entzogen!";
	};
	// Boating License
	case 8:
	{
		license_civ_boat = false;
		hint  "Dir wurde der Boots Führerschein entzogen!";
	};
	// Diving License
	case 9:
	{
		license_civ_dive = false;
		hint  "Dir wurde die Tauchlizenz entzogen!";
	};
	
	// All Motor Vehicle
	case 10:
	{
		license_civ_driver = false;
		license_civ_truck = false;
		license_civ_air = false;
		license_civ_boat = false;
		license_civ_air = false;
		license_civ_dive = false;
		hint  "Dir wurden alle Fahrzeuglizenzen entzogen";
	};
	// Firearms License
	case 11:
	{
		license_civ_gun = false;
		hint  "Dir wurde der Waffenschein entzogen!";
	};
};