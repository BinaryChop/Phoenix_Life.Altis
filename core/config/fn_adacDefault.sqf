/*
File: fn_AsADACDefault.sqf
Author: Bryan "Tonic" Boardwine

Description:
Default ADAC configuration.
*/
removeAllContainers player;
removeAllWeapons player;
player AddUniform "U_Rangemaster";
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
removeGoggles player;
removeHeadGear player;
if(hmd player != "") then {
player unlinkItem (hmd player);
};

player setObjectTextureGlobal [0,"textures\adac_uniform.paa"];

[] call life_fnc_saveGear;