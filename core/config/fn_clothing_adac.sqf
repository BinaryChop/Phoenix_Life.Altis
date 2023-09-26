/* 
File: fn_clothing_adac.sqf 
Author: Bryan "Tonic" Boardwine 

Description: 
Master config for clothing shop. //ADAC
*/ 
private["_filter"]; 
_filter = [_this,0,0,[0]] call BIS_fnc_param; 
//Classname, Custom Display name (use nil for Cfg->DisplayName, price 
switch (_filter) do 
{ 
//Uniforms 
case 0: 
{ 
[ 
["U_Rangemaster","ADAC Overall",250]
]; 
}; 

// //Hats 
// case 1: 
// { 
// [ 
// ["H_Bandanna_camo","Camo Bandanna",120], 
// ["H_Bandanna_surfer","Surfer Bandanna",130], 
// ["H_Bandanna_gry","Grey Bandanna",150], 
// ["H_Bandanna_khk","Khaki Bandanna",145], 
// ["H_Bandanna_sgg","Sage Bandanna",160], 
// ["H_StrawHat","Straw Fedora",225], 
// ["H_BandMask_blk","Hat & Bandanna",300] 
// ]; 
// }; 

//Glasses 
case 1: 
{ 
[ 
["G_Shades_Black",nil,0], 
["G_Shades_Blue",nil,0], 
["G_Sport_Blackred",nil,0], 
["G_Sport_Checkered",nil,0], 
["G_Sport_Blackyellow",nil,0], 
["G_Sport_BlackWhite",nil,0], 
["G_Squares",nil,0], 
["G_Lowprofile",nil,0], 
["G_Combat",nil,0] 
]; 
}; 

// //Vest 
// case 3: 
// { 
// [ 
// ["V_PlateCarrierIA1_dgtl",nil,2500], 
// ["V_PlateCarrierIA2_dgtl",nil,1500] 
// ]; 
// }; 

// //Backpacks 
 case 2: 
 { 
 [ 
 ["B_Kitbag_mcamo",nil,1250], 
 ["B_FieldPack_ocamo",nil,3000], 
 ["B_Bergen_sgg",nil,5000] 
 ]; 
 }; 
 };