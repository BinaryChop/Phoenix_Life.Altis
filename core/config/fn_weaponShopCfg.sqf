#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine Edit by Ministry of Mad Men
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	case "cop_kopf":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Staatsdiener!"};
			case (__GETC__(life_coplevel)!= 1): {"Du bist kein Kopfgeldjäger!"};
			default
			{
				["Kopfgeldjaeger",
					[
						//Tazer Pistole
						["hgun_Pistol_heavy_01_snds_F","Taser",2000],

						//Ammo
						["11Rnd_45ACP_Mag",nil,50],

						//Optic
						["optic_MRD","Visier Taser",100],

						//Tazer Gewehr
						["SMG_02_F","Tasergewehr",5000],

						//Ammo
						["30Rnd_9x21_Mag",nil,200],
						

						//Gewehre

						//MX

						/* 
						["arifle_MXC_Black_F",nil,6500],
						["arifle_MXM_Black_F",nil,9000],
						["arifle_MX_GL_Black_F",nil,10000],
						["arifle_MX_SW_Black_F",nil,15000],
						*/

						["arifle_MXC_F",nil,6500],
						["arifle_MXM_F",nil,9000],
						["arifle_MX_GL_F",nil,10000],
						["arifle_MX_SW_F",nil,15000],
						

						//Ammo
						["30Rnd_65x39_caseless_mag_Tracer",nil,200],
						["30Rnd_65x39_caseless_mag",nil,200],
						["100Rnd_65x39_caseless_mag_Tracer",nil,200],

						//40mm Granaten
						["1Rnd_SmokeGreen_Grenade_shell",nil,200],
						["1Rnd_HE_Grenade_shell",nil,200],
						["UGL_FlareYellow_F",nil,200],
						
						//MK200
						["LMG_Mk200_F",nil,15000],

						//Ammo
						["200Rnd_65x39_cased_Box_Tracer",nil,400],
						
						//Mk18
						["srifle_EBR_F",nil,20000],

						//Ammo
						["20Rnd_762x51_Mag",nil,250],
						
						
						//DLC Waffen 

						/*
						//.408 LRR 
						["srifle_LRR_F",nil,1000],

						//Ammo:
						["7Rnd_408_Mag",nil,100],
						

						//.338 Norma Magnum - Medium Maschine Gun
						["MMG_01_base_F",nil,1000],
						["MMG_01_hex_F",nil,1000],
						["MMG_01_tan_F",nil,1000],	
						//Ammo: 
						["130Rnd_338_Mag",nil,100],											
						*/

						//9.3mm HK 121 - Maschine Gun
						["MMG_02_base_F",nil,1000],

						/*
						["MMG_02_black_F",nil,1000],
						["MMG_02_camo_F",nil,1000],
						["MMG_02_sand_F",nil,1000],
						*/

						//Ammo:
						["150Rnd_93x64_Mag",nil,1000],


						//MAR-10 .338
						//["srifle_DMR_02_camo_F",nil,1000],
						["srifle_DMR_02_F",nil,1000],
						//["srifle_DMR_02_sniper_F",nil,1000],


						//Ammo:
						["10Rnd_338_Mag",nil,1000],


						//Mk-I EMR 7.62 mm
						["srifle_DMR_03_F",nil,1000],

						/*
						["srifle_DMR_03_khaki_F",nil,1000],
						["srifle_DMR_03_multicam_F",nil,1000],
						["srifle_DMR_03_spotter_F",nil,1000],
						["srifle_DMR_03_tan_F",nil,1000],
						["srifle_DMR_03_woodland_F",nil,1000],
						*/

						//Ammo:
						["20Rnd_762x51_Mag",nil,1000],


						/*
						//ASP-1 Kir 12.7 mm
						["srifle_DMR_04_F",nil,1000],
						["srifle_DMR_04_Tan_F",nil,1000],

						//Ammo:
						["10Rnd_127x54_Mag",nil,1000],
						*/

						//Cyrus 9.3 mm
						/*
						["srifle_DMR_05_blk_F",nil,1000],
						["srifle_DMR_05_hex_F",nil,1000],
						*/
						["srifle_DMR_05_tan_F",nil,1000],

						//Ammo:
						["10Rnd_93x64_DMR_05_Mag",nil,1000],

						/*
						//Mk 14 7.62 mm
						["srifle_DMR_06_camo_F",nil,1000],
						["srifle_DMR_06_olive_F",nil,1000],
						
						//Ammo:
						["20Rnd_762x51_Mag",nil,1000],
						*/

						//DLC Items und Optiken

						/*
						["bipod_01_F_blk",nil,1000],
						["bipod_01_F_mtp",nil,1000],
						["bipod_01_F_snd",nil,1000],
						["bipod_02_F_blk",nil,1000],
						["bipod_02_F_hex",nil,1000],
						["bipod_02_F_tan",nil,1000],
						["bipod_03_F_blk",nil,1000],
						*/
						["bipod_03_F_oli",nil,1000],
						
						//Schalldämpfer/Muzzles:

						/*
						//.338er:
						["muzzle_snds_338_black",nil,1000],
						["muzzle_snds_338_green",nil,1000],
						["muzzle_snds_338_sand",nil,1000],
						
						//9.3er:
						["muzzle_snds_93mmg",nil,1000],
						["muzzle_snds_93mmg_tan",nil,1000],
						*/

						//7.62mm:
						["muzzle_snds_B",nil,1000],

						//MG Leicht
						["muzzle_snds_H_MG",nil,1000],
						
						//6.5mm
						["muzzle_snds_H",nil,1000],

						//9mm
						["muzzle_snds_L",nil,650],



						//Visiere/Scopes
						
						//Advanced Marksmen Scope (AMS):    3x-10x Vergrößerung
						//["optic_AMS",nil,1000],
						["optic_AMS_base",nil,1000],
						//["optic_AMS_khk",nil,1000],
						//["optic_AMS_snd",nil,1000],
						
						//Kaliha (KHS):    5x-11x Vergrößerung
						["optic_KHS_base",nil,1000],
						/*
						["optic_KHS_blk",nil,1000],
						["optic_KHS_hex",nil,1000],
						["optic_KHS_old",nil,1000],
						["optic_KHS_tan",nil,1000],							
						*/

						//ACO	
						["optic_Aco_smg",nil,1000],
						["optic_ACO_grn_smg",nil,1000],

						//Holo
						["optic_Holosight",nil,1000],
						["optic_Holosight_smg",nil,1000],

						//Hamr
						["optic_Hamr",nil,1000],

						//NVS
						["optic_NVS",nil,1000],

						//ARCO
						["optic_Arco",nil,1000],

						//MRCO
						["optic_MRCO",nil,1000],

						//MOS
						["optic_SOS",nil,1000],

						//DMS
						["optic_DMS",nil,1000],

						//LRPS
						//["optic_LRPS",nil,1000],	

						
						// Items Waffen
						["acc_flashlight","Taktische Lampe",50],
						["acc_pointer_IR","IR Laser",50],
						
						//Granaten
						["SmokeShellGreen","Reizgas",100],
						["HandGrenade_Stone","Flashbang",400],

						// Kits
						["FirstAidKit","Erste Hilfe",50],
						["ToolKit","Werkzeugkasten",250],
						
						// Optik - Hand
						["NVGoggles_INDEP",nil,2000],
						["ItemGPS",nil,0],
						["Rangefinder","Distanzmesser",500],
						["Binocular","Feldstecher",0],

						// Funkgeräte
						["ItemRadio","Handy",500],

						//BlueFor
						["tf_anprc152",nil,50],
						["tf_rt1523g_fabric",nil,50],
						["tf_anarc210",nil,50]
						
						/*
						//Indep
						["tf_anprc148jem",nil,50],
						["tf_anprc155",nil,50],
						["tf_anarc164",nil,50],
						*/

						/*
						//OPFOR
						["tf_fadak",nil,50],
						["tf_mr3000_rhs",nil,50],
						["tf_mr6000l",nil,50],
						*/
					]
				];
			};
		};
	};
	
	case "cop_new":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Staatsdiener!"};
			case (__GETC__(life_coplevel) != 2): {"Du kein Polizist auf Probe!"};
			default
			{
				["Polizist auf Probe",
					[
						//Tazer Pistole
						["hgun_Pistol_heavy_01_snds_F","Taser",2000],

						//Ammo
						["11Rnd_45ACP_Mag",nil,50],

						//Optic
						["optic_MRD","Visier Taser",100],

						//Tazer Gewehr
						["SMG_02_F","Tasergewehr",5000],

						//Ammo
						["30Rnd_9x21_Mag",nil,200],
						
						/*
						//Gewehre

						//MX 
						["arifle_MXC_Black_F",nil,6500],
						["arifle_MXM_Black_F",nil,9000],
						["arifle_MX_GL_Black_F",nil,10000],
						["arifle_MX_SW_Black_F",nil,15000],
						

						//Ammo
						["30Rnd_65x39_caseless_mag_Tracer",nil,200],
						["30Rnd_65x39_caseless_mag",nil,200],
						["100Rnd_65x39_caseless_mag_Tracer",nil,200],

						//40mm Granaten
						["1Rnd_SmokeGreen_Grenade_shell",nil,200],
						["1Rnd_HE_Grenade_shell",nil,200],
						["UGL_FlareYellow_F",nil,200],
						
						//MK200
						["LMG_Mk200_F",nil,15000],

						//Ammo
						["200Rnd_65x39_cased_Box_Tracer",nil,400],
						
						//Mk18
						["srifle_EBR_F",nil,20000],

						//Ammo
						["20Rnd_762x51_Mag",nil,250],
						
						
						//DLC Waffen 

						//.408 LRR 
						//["srifle_LRR_F",nil,1000],

						//Ammo:
						//["7Rnd_408_Mag",nil,100],
						

						//.338 Norma Magnum - Medium Maschine Gun
						["MMG_01_base_F",nil,1000],
						["MMG_01_hex_F",nil,1000],
						["MMG_01_tan_F",nil,1000],
						//Ammo: 
						["130Rnd_338_Mag",nil,100],

						//9.3mm HK 121 - Maschine Gun
						["MMG_02_base_F",nil,1000],
						["MMG_02_black_F",nil,1000],
						["MMG_02_camo_F",nil,1000],
						["MMG_02_sand_F",nil,1000],


						//Ammo:
						["150Rnd_93x64_Mag",nil,1000],


						//MAR-10 .338
						["srifle_DMR_02_camo_F",nil,1000],
						["srifle_DMR_02_F",nil,1000],
						["srifle_DMR_02_sniper_F",nil,1000],


						//Ammo:
						["10Rnd_338_Mag",nil,1000],


						//Mk-I EMR 7.62 mm
						["srifle_DMR_03_F",nil,1000],
						["srifle_DMR_03_khaki_F",nil,1000],
						["srifle_DMR_03_multicam_F",nil,1000],
						["srifle_DMR_03_spotter_F",nil,1000],
						["srifle_DMR_03_tan_F",nil,1000],
						["srifle_DMR_03_woodland_F",nil,1000],

						//Ammo:
						["20Rnd_762x51_Mag",nil,1000],



						//ASP-1 Kir 12.7 mm
						["srifle_DMR_04_F",nil,1000],
						["srifle_DMR_04_Tan_F",nil,1000],

						//Ammo:
						["10Rnd_127x54_Mag",nil,1000],


						//Cyrus 9.3 mm
						["srifle_DMR_05_blk_F",nil,1000],
						["srifle_DMR_05_hex_F",nil,1000],
						["srifle_DMR_05_tan_F",nil,1000],

						//Ammo:
						["10Rnd_93x64_DMR_05_Mag",nil,1000],


						//Mk 14 7.62 mm
						["srifle_DMR_06_camo_F",nil,1000],
						["srifle_DMR_06_olive_F",nil,1000],

						//Ammo:
						["20Rnd_762x51_Mag",nil,1000],
						
						*/

						//DLC Items und Optiken

						["bipod_01_F_blk",nil,1000],
						["bipod_01_F_mtp",nil,1000],
						["bipod_01_F_snd",nil,1000],
						["bipod_02_F_blk",nil,1000],
						["bipod_02_F_hex",nil,1000],
						["bipod_02_F_tan",nil,1000],
						["bipod_03_F_blk",nil,1000],
						["bipod_03_F_oli",nil,1000],
						
						//Schalldämpfer/Muzzles:

						/*
						//.338er:
						["muzzle_snds_338_black",nil,1000],
						["muzzle_snds_338_green",nil,1000],
						["muzzle_snds_338_sand",nil,1000],
						
						//9.3er:
						["muzzle_snds_93mmg",nil,1000],
						["muzzle_snds_93mmg_tan",nil,1000],
						
						//7.62mm:
						["muzzle_snds_B",nil,1000],

						//MG Leicht
						["muzzle_snds_H_MG",nil,1000],
						
						*/
						//6.5mm
						["muzzle_snds_H",nil,1000],

						//9mm
						["muzzle_snds_L",nil,650],



						//Visiere/Scopes
						
						/*
						//Advanced Marksmen Scope (AMS):    3x-10x Vergrößerung
						["optic_AMS",nil,1000],
						["optic_AMS_base",nil,1000],
						["optic_AMS_khk",nil,1000],
						["optic_AMS_snd",nil,1000],
						
						//Kaliha (KHS):    5x-11x Vergrößerung
						["optic_KHS_base",nil,1000],
						["optic_KHS_blk",nil,1000],
						["optic_KHS_hex",nil,1000],
						["optic_KHS_old",nil,1000],
						["optic_KHS_tan",nil,1000],							
						*/
						//ACO	
						["optic_Aco_smg",nil,1000],
						["optic_ACO_grn_smg",nil,1000],

						//Holo
						["optic_Holosight",nil,1000],
						["optic_Holosight_smg",nil,1000],

						//Hamr
						["optic_Hamr",nil,1000],

						//NVS
						["optic_NVS",nil,1000],

						//ARCO
						["optic_Arco",nil,1000],

						//MRCO
						["optic_MRCO",nil,1000],

						//MOS
						//["optic_SOS",nil,1000],

						//DMS
						["optic_DMS",nil,1000],

						//LRPS
						//["optic_LRPS",nil,1000],	

						
						// Items Waffen
						["acc_flashlight","Taktische Lampe",50],
						["acc_pointer_IR","IR Laser",50],
						
						/*
						//Granaten
						["SmokeShellGreen","Reizgas",100],
						["HandGrenade_Stone","Flashbang",400],
						
						*/
						// Kits
						["FirstAidKit","Erste Hilfe",50],
						["ToolKit","Werkzeugkasten",250],
						
						// Optik - Hand
						["NVGoggles_INDEP",nil,2000],
						["ItemGPS",nil,0],
						["Rangefinder","Distanzmesser",500],
						["Binocular","Feldstecher",0],

						// Funkgeräte
						["ItemRadio","Handy",500],
						
						//BlueFor
						["tf_anprc152",nil,50],
						["tf_rt1523g_fabric",nil,50],
						["tf_anarc210",nil,50]
						
						/*
						//Indep
						["tf_anprc148jem",nil,50],
						["tf_anprc155",nil,50],
						["tf_anarc164",nil,50],
						*/

						/*
						//OPFOR
						["tf_fadak",nil,50],
						["tf_mr3000_rhs",nil,50],
						["tf_mr6000l",nil,50],
						*/

					]
				];
			};
		};
	};

	case "cop_basic":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Staatsdiener!"};
			case (__GETC__(life_coplevel) != 3): {"Du bist kein Polizist des mittleren dienstes!"};
			default
			{
				["Polizist mittlerer Dienst",
					[
						//Tazer Pistole
						["hgun_Pistol_heavy_01_snds_F","Taser",2000],

						//Ammo
						["11Rnd_45ACP_Mag",nil,50],

						//Optic
						["optic_MRD","Visier Taser",100],

						//Tazer Gewehr
						["SMG_02_F","Tasergewehr",5000],

						//Ammo
						["30Rnd_9x21_Mag",nil,200],
						
						//SMG 

						//Kris Vector .45ACP SMG
						["SMG_01_F",nil,10000],
						["30Rnd_45ACP_Mag_SMG_01",nil,500],
						
						//Gewehre

						//MX 
						["arifle_MXC_Black_F",nil,6500],
						["arifle_MXM_Black_F",nil,9000],
						//["arifle_MX_GL_Black_F",nil,10000],
						//["arifle_MX_SW_Black_F",nil,15000],
						

						//Ammo
						["30Rnd_65x39_caseless_mag_Tracer",nil,200],
						["30Rnd_65x39_caseless_mag",nil,200],
						//["100Rnd_65x39_caseless_mag_Tracer",nil,200],

						/*
						//40mm Granaten
						["1Rnd_SmokeGreen_Grenade_shell",nil,200],
						["1Rnd_HE_Grenade_shell",nil,200],
						["UGL_FlareYellow_F",nil,200],
						
						//MK200
						["LMG_Mk200_F",nil,15000],

						//Ammo
						["200Rnd_65x39_cased_Box_Tracer",nil,400],
						
						//Mk18
						["srifle_EBR_F",nil,20000],

						//Ammo
						["20Rnd_762x51_Mag",nil,250],
						
						
						//DLC Waffen 

						//.408 LRR 
						//["srifle_LRR_F",nil,1000],

						//Ammo:
						//["7Rnd_408_Mag",nil,100],
						

						//.338 Norma Magnum - Medium Maschine Gun
						["MMG_01_base_F",nil,1000],
						["MMG_01_hex_F",nil,1000],
						["MMG_01_tan_F",nil,1000],
						//Ammo: 
						["130Rnd_338_Mag",nil,100],						

						//9.3mm HK 121 - Maschine Gun
						["MMG_02_base_F",nil,1000],
						["MMG_02_black_F",nil,1000],
						["MMG_02_camo_F",nil,1000],
						["MMG_02_sand_F",nil,1000],


						//Ammo:
						["150Rnd_93x64_Mag",nil,1000],


						//MAR-10 .338
						["srifle_DMR_02_camo_F",nil,1000],
						["srifle_DMR_02_F",nil,1000],
						["srifle_DMR_02_sniper_F",nil,1000],


						//Ammo:
						["10Rnd_338_Mag",nil,1000],


						//Mk-I EMR 7.62 mm
						["srifle_DMR_03_F",nil,1000],
						["srifle_DMR_03_khaki_F",nil,1000],
						["srifle_DMR_03_multicam_F",nil,1000],
						["srifle_DMR_03_spotter_F",nil,1000],
						["srifle_DMR_03_tan_F",nil,1000],
						["srifle_DMR_03_woodland_F",nil,1000],

						//Ammo:
						["20Rnd_762x51_Mag",nil,1000],



						//ASP-1 Kir 12.7 mm
						["srifle_DMR_04_F",nil,1000],
						["srifle_DMR_04_Tan_F",nil,1000],

						//Ammo:
						["10Rnd_127x54_Mag",nil,1000],


						//Cyrus 9.3 mm
						["srifle_DMR_05_blk_F",nil,1000],
						["srifle_DMR_05_hex_F",nil,1000],
						["srifle_DMR_05_tan_F",nil,1000],

						//Ammo:
						["10Rnd_93x64_DMR_05_Mag",nil,1000],
						*/

						//Mk 14 7.62 mm
						["srifle_DMR_06_camo_F",nil,1000],
						//["srifle_DMR_06_olive_F",nil,1000],

						//Ammo:
						["20Rnd_762x51_Mag",nil,1000],

						//DLC Items und Optiken

						["bipod_01_F_blk",nil,1000],
						["bipod_01_F_mtp",nil,1000],
						["bipod_01_F_snd",nil,1000],
						["bipod_02_F_blk",nil,1000],
						["bipod_02_F_hex",nil,1000],
						["bipod_02_F_tan",nil,1000],
						["bipod_03_F_blk",nil,1000],
						["bipod_03_F_oli",nil,1000],
						
						//Schalldämpfer/Muzzles:
						/*
						//.338er:
						["muzzle_snds_338_black",nil,1000],
						["muzzle_snds_338_green",nil,1000],
						["muzzle_snds_338_sand",nil,1000],
						
						//9.3er:
						["muzzle_snds_93mmg",nil,1000],
						["muzzle_snds_93mmg_tan",nil,1000],
						
						//7.62mm:
						["muzzle_snds_B",nil,1000],

						//MG Leicht
						["muzzle_snds_H_MG",nil,1000],
						*/
						//6.5mm
						["muzzle_snds_H",nil,1000],

						//9mm
						["muzzle_snds_L",nil,650],



						//Visiere/Scopes
						
						//Advanced Marksmen Scope (AMS):    3x-10x Vergrößerung
						["optic_AMS",nil,1000],
						["optic_AMS_base",nil,1000],
						["optic_AMS_khk",nil,1000],
						["optic_AMS_snd",nil,1000],
						
						//Kaliha (KHS):    5x-11x Vergrößerung
						["optic_KHS_base",nil,1000],
						["optic_KHS_blk",nil,1000],
						["optic_KHS_hex",nil,1000],
						["optic_KHS_old",nil,1000],
						["optic_KHS_tan",nil,1000],							
						
						//ACO	
						["optic_Aco_smg",nil,1000],
						["optic_ACO_grn_smg",nil,1000],

						//Holo
						["optic_Holosight",nil,1000],
						["optic_Holosight_smg",nil,1000],

						//Hamr
						["optic_Hamr",nil,1000],

						//NVS
						["optic_NVS",nil,1000],

						//ARCO
						["optic_Arco",nil,1000],

						//MRCO
						["optic_MRCO",nil,1000],

						//MOS
						["optic_SOS",nil,1000],

						//DMS
						["optic_DMS",nil,1000],

						//LRPS
						["optic_LRPS",nil,1000],	

						
						// Items Waffen
						["acc_flashlight","Taktische Lampe",50],
						["acc_pointer_IR","IR Laser",50],
						
						//Granaten
						["SmokeShellGreen","Reizgas",100],
						["HandGrenade_Stone","Flashbang",400],

						// Kits
						["FirstAidKit","Erste Hilfe",50],
						["ToolKit","Werkzeugkasten",250],
						
						// Optik - Hand
						["NVGoggles_INDEP",nil,2000],
						["ItemGPS",nil,0],
						["Rangefinder","Distanzmesser",500],
						["Binocular","Feldstecher",0],

						// Funkgeräte
						["ItemRadio","Handy",500],
						
						//BlueFor
						["tf_anprc152",nil,50],
						["tf_rt1523g_fabric",nil,50],
						["tf_anarc210",nil,50]
						
						/*
						//Indep
						["tf_anprc148jem",nil,50],
						["tf_anprc155",nil,50],
						["tf_anarc164",nil,50],
						*/

						/*
						//OPFOR
						["tf_fadak",nil,50],
						["tf_mr3000_rhs",nil,50],
						["tf_mr6000l",nil,50],
						*/
					]
				];
			};
		};
	};

	case "cop_heigh":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Staatsdiener!"};
			case (__GETC__(life_coplevel) != 4): {"Du bist kein Polizist des gehobenen Dienstes!"};
			default
			{
				["Polizist gehobener Dienst",
					[
						//Tazer Pistole
						["hgun_Pistol_heavy_01_snds_F","Taser",2000],

						//Ammo
						["11Rnd_45ACP_Mag",nil,50],

						//Optic
						["optic_MRD","Visier Taser",100],

						//Tazer Gewehr
						["SMG_02_F","Tasergewehr",5000],

						//Ammo
						["30Rnd_9x21_Mag",nil,200],
						
						//SMG 

						//Kris Vector .45ACP SMG
						["SMG_01_F",nil,10000],
						["30Rnd_45ACP_Mag_SMG_01",nil,500],
						
						//Gewehre

						//MX 
						["arifle_MXC_Black_F",nil,6500],
						["arifle_MXM_Black_F",nil,9000],
						["arifle_MX_GL_Black_F",nil,10000],
						["arifle_MX_SW_Black_F",nil,15000],
						

						//Ammo
						["30Rnd_65x39_caseless_mag_Tracer",nil,200],
						["30Rnd_65x39_caseless_mag",nil,200],
						["100Rnd_65x39_caseless_mag_Tracer",nil,200],

						//40mm Granaten
						["1Rnd_SmokeGreen_Grenade_shell",nil,200],
						["1Rnd_HE_Grenade_shell",nil,200],
						["UGL_FlareYellow_F",nil,200],
						
						/*
						//MK200
						["LMG_Mk200_F",nil,15000],

						//Ammo
						["200Rnd_65x39_cased_Box_Tracer",nil,400],
						*/
						//Mk18
						["srifle_EBR_F",nil,20000],

						//Ammo
						["20Rnd_762x51_Mag",nil,250],
						
						
						//DLC Waffen 

						//.408 LRR 
						//["srifle_LRR_F",nil,1000],

						//Ammo:
						//["7Rnd_408_Mag",nil,100],
						

						//.338 Norma Magnum - Medium Maschine Gun
						["MMG_01_base_F",nil,1000],
						["MMG_01_hex_F",nil,1000],
						["MMG_01_tan_F",nil,1000],
						//Ammo: 
						["130Rnd_338_Mag",nil,100],

						//9.3mm HK 121 - Maschine Gun
						["MMG_02_base_F",nil,1000],
						["MMG_02_black_F",nil,1000],
						["MMG_02_camo_F",nil,1000],
						["MMG_02_sand_F",nil,1000],


						//Ammo:
						["150Rnd_93x64_Mag",nil,1000],

						/*
						//MAR-10 .338
						["srifle_DMR_02_camo_F",nil,1000],
						["srifle_DMR_02_F",nil,1000],
						["srifle_DMR_02_sniper_F",nil,1000],


						//Ammo:
						["10Rnd_338_Mag",nil,1000],
						*/

						//Mk-I EMR 7.62 mm
						["srifle_DMR_03_F",nil,1000],
						["srifle_DMR_03_khaki_F",nil,1000],
						["srifle_DMR_03_multicam_F",nil,1000],
						["srifle_DMR_03_spotter_F",nil,1000],
						["srifle_DMR_03_tan_F",nil,1000],
						["srifle_DMR_03_woodland_F",nil,1000],

						//Ammo:
						["20Rnd_762x51_Mag",nil,1000],


						/*
						//ASP-1 Kir 12.7 mm
						["srifle_DMR_04_F",nil,1000],
						["srifle_DMR_04_Tan_F",nil,1000],

						//Ammo:
						["10Rnd_127x54_Mag",nil,1000],
						*/

						//Cyrus 9.3 mm
						["srifle_DMR_05_blk_F",nil,1000],
						["srifle_DMR_05_hex_F",nil,1000],
						["srifle_DMR_05_tan_F",nil,1000],

						//Ammo:
						["10Rnd_93x64_DMR_05_Mag",nil,1000],


						//Mk 14 7.62 mm
						["srifle_DMR_06_camo_F",nil,1000],
						["srifle_DMR_06_olive_F",nil,1000],

						//Ammo:
						["20Rnd_762x51_Mag",nil,1000],

						//DLC Items und Optiken

						["bipod_01_F_blk",nil,1000],
						["bipod_01_F_mtp",nil,1000],
						["bipod_01_F_snd",nil,1000],
						["bipod_02_F_blk",nil,1000],
						["bipod_02_F_hex",nil,1000],
						["bipod_02_F_tan",nil,1000],
						["bipod_03_F_blk",nil,1000],
						["bipod_03_F_oli",nil,1000],
						
						//Schalldämpfer/Muzzles:

						/*
						//.338er:
						["muzzle_snds_338_black",nil,1000],
						["muzzle_snds_338_green",nil,1000],
						["muzzle_snds_338_sand",nil,1000],
						
						//9.3er:
						["muzzle_snds_93mmg",nil,1000],
						["muzzle_snds_93mmg_tan",nil,1000],
						*/
						//7.62mm:
						["muzzle_snds_B",nil,1000],

						//MG Leicht
						["muzzle_snds_H_MG",nil,1000],
						
						//6.5mm
						["muzzle_snds_H",nil,1000],

						//9mm
						["muzzle_snds_L",nil,650],



						//Visiere/Scopes
						
						//Advanced Marksmen Scope (AMS):    3x-10x Vergrößerung
						["optic_AMS",nil,1000],
						["optic_AMS_base",nil,1000],
						["optic_AMS_khk",nil,1000],
						["optic_AMS_snd",nil,1000],
						
						//Kaliha (KHS):    5x-11x Vergrößerung
						["optic_KHS_base",nil,1000],
						["optic_KHS_blk",nil,1000],
						["optic_KHS_hex",nil,1000],
						["optic_KHS_old",nil,1000],
						["optic_KHS_tan",nil,1000],							
						
						//ACO	
						["optic_Aco_smg",nil,1000],
						["optic_ACO_grn_smg",nil,1000],

						//Holo
						["optic_Holosight",nil,1000],
						["optic_Holosight_smg",nil,1000],

						//Hamr
						["optic_Hamr",nil,1000],

						//NVS
						["optic_NVS",nil,1000],

						//ARCO
						["optic_Arco",nil,1000],

						//MRCO
						["optic_MRCO",nil,1000],

						//MOS
						["optic_SOS",nil,1000],

						//DMS
						["optic_DMS",nil,1000],

						//LRPS
						["optic_LRPS",nil,1000],	

						
						// Items Waffen
						["acc_flashlight","Taktische Lampe",50],
						["acc_pointer_IR","IR Laser",50],
						
						//Granaten
						["SmokeShellGreen","Reizgas",100],
						["HandGrenade_Stone","Flashbang",400],

						// Kits
						["FirstAidKit","Erste Hilfe",50],
						["ToolKit","Werkzeugkasten",250],
						
						// Optik - Hand
						["NVGoggles_INDEP",nil,2000],
						["ItemGPS",nil,0],
						["Rangefinder","Distanzmesser",500],
						["Binocular","Feldstecher",0],

						// Funkgeräte
						["ItemRadio","Handy",500],
						
						//BlueFor
						["tf_anprc152",nil,50],
						["tf_rt1523g_fabric",nil,50],
						["tf_anarc210",nil,50]
						
						/*
						//Indep
						["tf_anprc148jem",nil,50],
						["tf_anprc155",nil,50],
						["tf_anarc164",nil,50],
						*/

						/*
						//OPFOR
						["tf_fadak",nil,50],
						["tf_mr3000_rhs",nil,50],
						["tf_mr6000l",nil,50],
						*/
					]
				];
			};
		};
	};
	
	case "cop_sleader":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Staatsdiener!"};
			case (__GETC__(life_coplevel) != 5): {"Du bist kein Teamleiter!"};
			default
			{
				["Teamleiter",
					[
						//Tazer Pistole
						["hgun_Pistol_heavy_01_snds_F","Taser",2000],

						//Ammo
						["11Rnd_45ACP_Mag",nil,50],

						//Optic
						["optic_MRD","Visier Taser",100],

						//Tazer Gewehr
						["SMG_02_F","Tasergewehr",5000],

						//Ammo
						["30Rnd_9x21_Mag",nil,200],
						
						//SMG 

						//Kris Vector .45ACP SMG
						["SMG_01_F",nil,10000],
						["30Rnd_45ACP_Mag_SMG_01",nil,500],
						
						//Gewehre

						//MX 
						["arifle_MXC_Black_F",nil,6500],
						["arifle_MXM_Black_F",nil,9000],
						["arifle_MX_GL_Black_F",nil,10000],
						["arifle_MX_SW_Black_F",nil,15000],
						

						//Ammo
						["30Rnd_65x39_caseless_mag_Tracer",nil,200],
						["30Rnd_65x39_caseless_mag",nil,200],
						["100Rnd_65x39_caseless_mag_Tracer",nil,200],

						//40mm Granaten
						["1Rnd_SmokeGreen_Grenade_shell",nil,200],
						["1Rnd_HE_Grenade_shell",nil,200],
						["UGL_FlareYellow_F",nil,200],
						
						//MK200
						["LMG_Mk200_F",nil,15000],

						//Ammo
						["200Rnd_65x39_cased_Box_Tracer",nil,400],
						
						//Mk18
						["srifle_EBR_F",nil,20000],

						//Ammo
						["20Rnd_762x51_Mag",nil,250],
						
						
						//DLC Waffen 

						//.408 LRR 
						//["srifle_LRR_F",nil,1000],

						//Ammo:
						//["7Rnd_408_Mag",nil,100],
						

						//.338 Norma Magnum - Medium Maschine Gun
						["MMG_01_base_F",nil,1000],
						["MMG_01_hex_F",nil,1000],
						["MMG_01_tan_F",nil,1000],
						//Ammo: 
						["130Rnd_338_Mag",nil,100],						

						//9.3mm HK 121 - Maschine Gun
						["MMG_02_base_F",nil,1000],
						["MMG_02_black_F",nil,1000],
						["MMG_02_camo_F",nil,1000],
						["MMG_02_sand_F",nil,1000],


						//Ammo:
						["150Rnd_93x64_Mag",nil,1000],

						/*
						//MAR-10 .338
						["srifle_DMR_02_camo_F",nil,1000],
						["srifle_DMR_02_F",nil,1000],
						["srifle_DMR_02_sniper_F",nil,1000],


						//Ammo:
						["10Rnd_338_Mag",nil,1000],
						*/

						//Mk-I EMR 7.62 mm
						["srifle_DMR_03_F",nil,1000],
						["srifle_DMR_03_khaki_F",nil,1000],
						["srifle_DMR_03_multicam_F",nil,1000],
						["srifle_DMR_03_spotter_F",nil,1000],
						["srifle_DMR_03_tan_F",nil,1000],
						["srifle_DMR_03_woodland_F",nil,1000],

						//Ammo:
						["20Rnd_762x51_Mag",nil,1000],


						/*
						//ASP-1 Kir 12.7 mm
						["srifle_DMR_04_F",nil,1000],
						["srifle_DMR_04_Tan_F",nil,1000],

						//Ammo:
						["10Rnd_127x54_Mag",nil,1000],
						*/

						//Cyrus 9.3 mm
						["srifle_DMR_05_blk_F",nil,1000],
						["srifle_DMR_05_hex_F",nil,1000],
						["srifle_DMR_05_tan_F",nil,1000],

						//Ammo:
						["10Rnd_93x64_DMR_05_Mag",nil,1000],


						//Mk 14 7.62 mm
						["srifle_DMR_06_camo_F",nil,1000],
						["srifle_DMR_06_olive_F",nil,1000],

						//Ammo:
						["20Rnd_762x51_Mag",nil,1000],

						//DLC Items und Optiken

						["bipod_01_F_blk",nil,1000],
						["bipod_01_F_mtp",nil,1000],
						["bipod_01_F_snd",nil,1000],
						["bipod_02_F_blk",nil,1000],
						["bipod_02_F_hex",nil,1000],
						["bipod_02_F_tan",nil,1000],
						["bipod_03_F_blk",nil,1000],
						["bipod_03_F_oli",nil,1000],
						
						//Schalldämpfer/Muzzles:

						//.338er:
						["muzzle_snds_338_black",nil,1000],
						["muzzle_snds_338_green",nil,1000],
						["muzzle_snds_338_sand",nil,1000],
						
						//9.3er:
						["muzzle_snds_93mmg",nil,1000],
						["muzzle_snds_93mmg_tan",nil,1000],
						
						//7.62mm:
						["muzzle_snds_B",nil,1000],

						//MG Leicht
						["muzzle_snds_H_MG",nil,1000],
						
						//6.5mm
						["muzzle_snds_H",nil,1000],

						//9mm
						["muzzle_snds_L",nil,650],



						//Visiere/Scopes
						
						//Advanced Marksmen Scope (AMS):    3x-10x Vergrößerung
						["optic_AMS",nil,1000],
						["optic_AMS_base",nil,1000],
						["optic_AMS_khk",nil,1000],
						["optic_AMS_snd",nil,1000],
						
						//Kaliha (KHS):    5x-11x Vergrößerung
						["optic_KHS_base",nil,1000],
						["optic_KHS_blk",nil,1000],
						["optic_KHS_hex",nil,1000],
						["optic_KHS_old",nil,1000],
						["optic_KHS_tan",nil,1000],							
						
						//ACO	
						["optic_Aco_smg",nil,1000],
						["optic_ACO_grn_smg",nil,1000],

						//Holo
						["optic_Holosight",nil,1000],
						["optic_Holosight_smg",nil,1000],

						//Hamr
						["optic_Hamr",nil,1000],

						//NVS
						["optic_NVS",nil,1000],

						//ARCO
						["optic_Arco",nil,1000],

						//MRCO
						["optic_MRCO",nil,1000],

						//MOS
						["optic_SOS",nil,1000],

						//DMS
						["optic_DMS",nil,1000],

						//LRPS
						["optic_LRPS",nil,1000],	

						
						// Items Waffen
						["acc_flashlight","Taktische Lampe",50],
						["acc_pointer_IR","IR Laser",50],
						
						//Granaten
						["SmokeShellGreen","Reizgas",100],
						["HandGrenade_Stone","Flashbang",400],

						// Kits
						["FirstAidKit","Erste Hilfe",50],
						["ToolKit","Werkzeugkasten",250],
						
						// Optik - Hand
						["NVGoggles_INDEP",nil,2000],
						["ItemGPS",nil,0],
						["Rangefinder","Distanzmesser",500],
						["Binocular","Feldstecher",0],

						// Funkgeräte
						["ItemRadio","Handy",500],
						
						//BlueFor
						["tf_anprc152",nil,50],
						["tf_rt1523g_fabric",nil,50],
						["tf_anarc210",nil,50]
						
						/*
						//Indep
						["tf_anprc148jem",nil,50],
						["tf_anprc155",nil,50],
						["tf_anarc164",nil,50],
						*/

						/*
						//OPFOR
						["tf_fadak",nil,50],
						["tf_mr3000_rhs",nil,50],
						["tf_mr6000l",nil,50],
						*/
					]
				];
			};
		};
	};
	
	case "cop_instructor":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Staatsdiener!"};
			case (__GETC__(life_coplevel) != 6): {"Du bist kein Ausbilder!"};
			default
			{
				["Ausbilder",
					[
						//Tazer Pistole
						["hgun_Pistol_heavy_01_snds_F","Taser",2000],

						//Ammo
						["11Rnd_45ACP_Mag",nil,50],

						//Optic
						["optic_MRD","Visier Taser",100],

						//Tazer Gewehr
						["SMG_02_F","Tasergewehr",5000],

						//Ammo
						["30Rnd_9x21_Mag",nil,200],
						
						//SMG 

						//Kris Vector .45ACP SMG
						["SMG_01_F",nil,10000],
						["30Rnd_45ACP_Mag_SMG_01",nil,500],
						
						//Gewehre

						//MX 
						["arifle_MXC_Black_F",nil,6500],
						["arifle_MXM_Black_F",nil,9000],
						["arifle_MX_GL_Black_F",nil,10000],
						["arifle_MX_SW_Black_F",nil,15000],
						

						//Ammo
						["30Rnd_65x39_caseless_mag_Tracer",nil,200],
						["30Rnd_65x39_caseless_mag",nil,200],
						["100Rnd_65x39_caseless_mag_Tracer",nil,200],

						//40mm Granaten
						["1Rnd_SmokeGreen_Grenade_shell",nil,200],
						["1Rnd_HE_Grenade_shell",nil,200],
						["UGL_FlareYellow_F",nil,200],
						
						//MK200
						["LMG_Mk200_F",nil,15000],

						//Ammo
						["200Rnd_65x39_cased_Box_Tracer",nil,400],
						
						//Mk18
						["srifle_EBR_F",nil,20000],

						//Ammo
						["20Rnd_762x51_Mag",nil,250],
						
						
						//DLC Waffen 

						//.408 LRR 
						//["srifle_LRR_F",nil,1000],

						//Ammo:
						//["7Rnd_408_Mag",nil,100],
						

						//.338 Norma Magnum - Medium Maschine Gun
						["MMG_01_base_F",nil,1000],
						["MMG_01_hex_F",nil,1000],
						["MMG_01_tan_F",nil,1000],
						//Ammo: 
						["130Rnd_338_Mag",nil,100],

						//9.3mm HK 121 - Maschine Gun
						["MMG_02_base_F",nil,1000],
						["MMG_02_black_F",nil,1000],
						["MMG_02_camo_F",nil,1000],
						["MMG_02_sand_F",nil,1000],


						//Ammo:
						["150Rnd_93x64_Mag",nil,1000],

						/*
						//MAR-10 .338
						["srifle_DMR_02_camo_F",nil,1000],
						["srifle_DMR_02_F",nil,1000],
						["srifle_DMR_02_sniper_F",nil,1000],


						//Ammo:
						["10Rnd_338_Mag",nil,1000],
						*/

						//Mk-I EMR 7.62 mm
						["srifle_DMR_03_F",nil,1000],
						["srifle_DMR_03_khaki_F",nil,1000],
						["srifle_DMR_03_multicam_F",nil,1000],
						["srifle_DMR_03_spotter_F",nil,1000],
						["srifle_DMR_03_tan_F",nil,1000],
						["srifle_DMR_03_woodland_F",nil,1000],

						//Ammo:
						["20Rnd_762x51_Mag",nil,1000],


						/*
						//ASP-1 Kir 12.7 mm
						["srifle_DMR_04_F",nil,1000],
						["srifle_DMR_04_Tan_F",nil,1000],

						//Ammo:
						["10Rnd_127x54_Mag",nil,1000],
						*/

						//Cyrus 9.3 mm
						["srifle_DMR_05_blk_F",nil,1000],
						["srifle_DMR_05_hex_F",nil,1000],
						["srifle_DMR_05_tan_F",nil,1000],

						//Ammo:
						["10Rnd_93x64_DMR_05_Mag",nil,1000],


						//Mk 14 7.62 mm
						["srifle_DMR_06_camo_F",nil,1000],
						["srifle_DMR_06_olive_F",nil,1000],

						//Ammo:
						["20Rnd_762x51_Mag",nil,1000],

						//DLC Items und Optiken

						["bipod_01_F_blk",nil,1000],
						["bipod_01_F_mtp",nil,1000],
						["bipod_01_F_snd",nil,1000],
						["bipod_02_F_blk",nil,1000],
						["bipod_02_F_hex",nil,1000],
						["bipod_02_F_tan",nil,1000],
						["bipod_03_F_blk",nil,1000],
						["bipod_03_F_oli",nil,1000],
						
						//Schalldämpfer/Muzzles:

						//.338er:
						["muzzle_snds_338_black",nil,1000],
						["muzzle_snds_338_green",nil,1000],
						["muzzle_snds_338_sand",nil,1000],
						
						//9.3er:
						["muzzle_snds_93mmg",nil,1000],
						["muzzle_snds_93mmg_tan",nil,1000],
						
						//7.62mm:
						["muzzle_snds_B",nil,1000],

						//MG Leicht
						["muzzle_snds_H_MG",nil,1000],
						
						//6.5mm
						["muzzle_snds_H",nil,1000],

						//9mm
						["muzzle_snds_L",nil,650],



						//Visiere/Scopes
						
						//Advanced Marksmen Scope (AMS):    3x-10x Vergrößerung
						["optic_AMS",nil,1000],
						["optic_AMS_base",nil,1000],
						["optic_AMS_khk",nil,1000],
						["optic_AMS_snd",nil,1000],
						
						//Kaliha (KHS):    5x-11x Vergrößerung
						["optic_KHS_base",nil,1000],
						["optic_KHS_blk",nil,1000],
						["optic_KHS_hex",nil,1000],
						["optic_KHS_old",nil,1000],
						["optic_KHS_tan",nil,1000],							
						
						//ACO	
						["optic_Aco_smg",nil,1000],
						["optic_ACO_grn_smg",nil,1000],

						//Holo
						["optic_Holosight",nil,1000],
						["optic_Holosight_smg",nil,1000],

						//Hamr
						["optic_Hamr",nil,1000],

						//NVS
						["optic_NVS",nil,1000],

						//ARCO
						["optic_Arco",nil,1000],

						//MRCO
						["optic_MRCO",nil,1000],

						//MOS
						["optic_SOS",nil,1000],

						//DMS
						["optic_DMS",nil,1000],

						//LRPS
						["optic_LRPS",nil,1000],	

						
						// Items Waffen
						["acc_flashlight","Taktische Lampe",50],
						["acc_pointer_IR","IR Laser",50],
						
						//Granaten
						["SmokeShellGreen","Reizgas",100],
						["HandGrenade_Stone","Flashbang",400],

						// Kits
						["FirstAidKit","Erste Hilfe",50],
						["ToolKit","Werkzeugkasten",250],
						
						// Optik - Hand
						["NVGoggles_INDEP",nil,2000],
						["ItemGPS",nil,0],
						["Rangefinder","Distanzmesser",500],
						["Binocular","Feldstecher",0],

						// Funkgeräte
						["ItemRadio","Handy",500],
						
						//BlueFor
						["tf_anprc152",nil,50],
						["tf_rt1523g_fabric",nil,50],
						["tf_anarc210",nil,50]
						
						/*
						//Indep
						["tf_anprc148jem",nil,50],
						["tf_anprc155",nil,50],
						["tf_anarc164",nil,50],
						*/

						/*
						//OPFOR
						["tf_fadak",nil,50],
						["tf_mr3000_rhs",nil,50],
						["tf_mr6000l",nil,50],
						*/
					]
				];
			};
		};
	};
	
	case "cop_sek":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Staatsdiener!"};
			case (__GETC__(life_coplevel) != 7): {"Du bist kein SEK Beamter!"};
			default
			{
				["SEK",
					[	
						//Tazer Pistole
						["hgun_Pistol_heavy_01_snds_F","Taser",2000],

						//Ammo
						["11Rnd_45ACP_Mag",nil,50],

						//Optic
						["optic_MRD","Visier Taser",100],

						//Tazer Gewehr
						["SMG_02_F","Tasergewehr",5000],

						//Ammo
						["30Rnd_9x21_Mag",nil,200],
						
						//SMG 

						//Kris Vector .45ACP SMG
						["SMG_01_F",nil,10000],
						["30Rnd_45ACP_Mag_SMG_01",nil,500],
						
						//Gewehre

						//MX 
						["arifle_MXC_Black_F",nil,6500],
						["arifle_MXM_Black_F",nil,9000],
						["arifle_MX_GL_Black_F",nil,10000],
						["arifle_MX_SW_Black_F",nil,15000],
						

						//Ammo
						["30Rnd_65x39_caseless_mag_Tracer",nil,200],
						["30Rnd_65x39_caseless_mag",nil,200],
						["100Rnd_65x39_caseless_mag_Tracer",nil,200],

						//40mm Granaten
						["1Rnd_SmokeGreen_Grenade_shell",nil,200],
						["1Rnd_HE_Grenade_shell",nil,200],
						["UGL_FlareYellow_F",nil,200],
						
						//MK200
						["LMG_Mk200_F",nil,15000],

						//Ammo
						["200Rnd_65x39_cased_Box_Tracer",nil,400],
						
						//Mk18
						["srifle_EBR_F",nil,20000],

						//Ammo
						["20Rnd_762x51_Mag",nil,250],
						
						
						//DLC Waffen 

						//.408 LRR 
						["srifle_LRR_F",nil,1000],

						//Ammo:
						["7Rnd_408_Mag",nil,100],
						

						//.338 Norma Magnum - Medium Maschine Gun
						["MMG_01_base_F",nil,1000],
						["MMG_01_hex_F",nil,1000],
						["MMG_01_tan_F",nil,1000],
						//Ammo: 
						["130Rnd_338_Mag",nil,100],

						//9.3mm HK 121 - Maschine Gun
						["MMG_02_base_F",nil,1000],
						["MMG_02_black_F",nil,1000],
						["MMG_02_camo_F",nil,1000],
						["MMG_02_sand_F",nil,1000],


						//Ammo:
						["150Rnd_93x64_Mag",nil,1000],


						//MAR-10 .338
						["srifle_DMR_02_camo_F",nil,1000],
						["srifle_DMR_02_F",nil,1000],
						["srifle_DMR_02_sniper_F",nil,1000],


						//Ammo:
						["10Rnd_338_Mag",nil,1000],


						//Mk-I EMR 7.62 mm
						["srifle_DMR_03_F",nil,1000],
						["srifle_DMR_03_khaki_F",nil,1000],
						["srifle_DMR_03_multicam_F",nil,1000],
						["srifle_DMR_03_spotter_F",nil,1000],
						["srifle_DMR_03_tan_F",nil,1000],
						["srifle_DMR_03_woodland_F",nil,1000],

						//Ammo:
						["20Rnd_762x51_Mag",nil,1000],


						/*
						//ASP-1 Kir 12.7 mm
						["srifle_DMR_04_F",nil,1000],
						["srifle_DMR_04_Tan_F",nil,1000],

						//Ammo:
						["10Rnd_127x54_Mag",nil,1000],
						*/

						//Cyrus 9.3 mm
						["srifle_DMR_05_blk_F",nil,1000],
						["srifle_DMR_05_hex_F",nil,1000],
						["srifle_DMR_05_tan_F",nil,1000],

						//Ammo:
						["10Rnd_93x64_DMR_05_Mag",nil,1000],


						//Mk 14 7.62 mm
						["srifle_DMR_06_camo_F",nil,1000],
						["srifle_DMR_06_olive_F",nil,1000],

						//Ammo:
						["20Rnd_762x51_Mag",nil,1000],

						//DLC Items und Optiken

						["bipod_01_F_blk",nil,1000],
						["bipod_01_F_mtp",nil,1000],
						["bipod_01_F_snd",nil,1000],
						["bipod_02_F_blk",nil,1000],
						["bipod_02_F_hex",nil,1000],
						["bipod_02_F_tan",nil,1000],
						["bipod_03_F_blk",nil,1000],
						["bipod_03_F_oli",nil,1000],
						
						//Schalldämpfer/Muzzles:

						//.338er:
						["muzzle_snds_338_black",nil,1000],
						["muzzle_snds_338_green",nil,1000],
						["muzzle_snds_338_sand",nil,1000],
						
						//9.3er:
						["muzzle_snds_93mmg",nil,1000],
						["muzzle_snds_93mmg_tan",nil,1000],
						
						//7.62mm:
						["muzzle_snds_B",nil,1000],

						//MG Leicht
						["muzzle_snds_H_MG",nil,1000],
						
						//6.5mm
						["muzzle_snds_H",nil,1000],

						//9mm
						["muzzle_snds_L",nil,650],



						//Visiere/Scopes
						
						//Advanced Marksmen Scope (AMS):    3x-10x Vergrößerung
						["optic_AMS",nil,1000],
						["optic_AMS_base",nil,1000],
						["optic_AMS_khk",nil,1000],
						["optic_AMS_snd",nil,1000],
						
						//Kaliha (KHS):    5x-11x Vergrößerung
						["optic_KHS_base",nil,1000],
						["optic_KHS_blk",nil,1000],
						["optic_KHS_hex",nil,1000],
						["optic_KHS_old",nil,1000],
						["optic_KHS_tan",nil,1000],							
						
						//ACO	
						["optic_Aco_smg",nil,1000],
						["optic_ACO_grn_smg",nil,1000],

						//Holo
						["optic_Holosight",nil,1000],
						["optic_Holosight_smg",nil,1000],

						//Hamr
						["optic_Hamr",nil,1000],

						//NVS
						["optic_NVS",nil,1000],

						//ARCO
						["optic_Arco",nil,1000],

						//MRCO
						["optic_MRCO",nil,1000],

						//MOS
						["optic_SOS",nil,1000],

						//DMS
						["optic_DMS",nil,1000],

						//LRPS
						["optic_LRPS",nil,1000],	

						
						// Items Waffen
						["acc_flashlight","Taktische Lampe",50],
						["acc_pointer_IR","IR Laser",50],
						
						//Granaten
						["SmokeShellGreen","Reizgas",100],
						["HandGrenade_Stone","Flashbang",400],

						// Kits
						["FirstAidKit","Erste Hilfe",50],
						["ToolKit","Werkzeugkasten",250],
						
						// Optik - Hand
						["NVGoggles_OPFOR",nil,2000],
						["O_UavTerminal",nil,2000],
						["ItemGPS",nil,0],
						["Rangefinder","Distanzmesser",500],
						["Binocular","Feldstecher",0],

						// Funkgeräte
						["ItemRadio","Handy",500],
						
						//BlueFor
						["tf_anprc152",nil,50],
						["tf_rt1523g_fabric",nil,50],
						["tf_anarc210",nil,50]
						
						/*
						//Indep
						["tf_anprc148jem",nil,50],
						["tf_anprc155",nil,50],
						["tf_anarc164",nil,50],
						*/

						/*
						//OPFOR
						["tf_fadak",nil,50],
						["tf_mr3000_rhs",nil,50],
						["tf_mr6000l",nil,50],
						*/
					]
				];
			};
		};
	};
	
	case "cop_sekleader":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Staatsdiener!"};
			case (__GETC__(life_coplevel) != 8): {"Du bist kein SEK Leiter!"};
			default
			{
				["SEK Leiter",
					[
						//Tazer Pistole
						["hgun_Pistol_heavy_01_snds_F","Taser",2000],

						//Ammo
						["11Rnd_45ACP_Mag",nil,50],

						//Optic
						["optic_MRD","Visier Taser",100],

						//Tazer Gewehr
						["SMG_02_F","Tasergewehr",5000],

						//Ammo
						["30Rnd_9x21_Mag",nil,200],
						
						//SMG 

						//Kris Vector .45ACP SMG
						["SMG_01_F",nil,10000],
						["30Rnd_45ACP_Mag_SMG_01",nil,500],

						//Gewehre

						//MX 
						["arifle_MXC_Black_F",nil,6500],
						["arifle_MXM_Black_F",nil,9000],
						["arifle_MX_GL_Black_F",nil,10000],
						["arifle_MX_SW_Black_F",nil,15000],
						

						//Ammo
						["30Rnd_65x39_caseless_mag_Tracer",nil,200],
						["30Rnd_65x39_caseless_mag",nil,200],
						["100Rnd_65x39_caseless_mag_Tracer",nil,200],

						//40mm Granaten
						["1Rnd_SmokeGreen_Grenade_shell",nil,200],
						["1Rnd_HE_Grenade_shell",nil,200],
						["UGL_FlareYellow_F",nil,200],
						
						//MK200
						["LMG_Mk200_F",nil,15000],

						//Ammo
						["200Rnd_65x39_cased_Box_Tracer",nil,400],
						
						//Mk18
						["srifle_EBR_F",nil,20000],

						//Ammo
						["20Rnd_762x51_Mag",nil,250],
						
						
						//DLC Waffen 

						//.408 LRR 
						//["srifle_LRR_F",nil,1000],

						//Ammo:
						//["7Rnd_408_Mag",nil,100],
						

						//.338 Norma Magnum - Medium Maschine Gun
						["MMG_01_base_F",nil,1000],
						["MMG_01_hex_F",nil,1000],
						["MMG_01_tan_F",nil,1000],
						//Ammo: 
						["130Rnd_338_Mag",nil,100],

						//9.3mm HK 121 - Maschine Gun
						["MMG_02_base_F",nil,1000],
						["MMG_02_black_F",nil,1000],
						["MMG_02_camo_F",nil,1000],
						["MMG_02_sand_F",nil,1000],


						//Ammo:
						["150Rnd_93x64_Mag",nil,1000],


						//MAR-10 .338
						["srifle_DMR_02_camo_F",nil,1000],
						["srifle_DMR_02_F",nil,1000],
						["srifle_DMR_02_sniper_F",nil,1000],


						//Ammo:
						["10Rnd_338_Mag",nil,1000],


						//Mk-I EMR 7.62 mm
						["srifle_DMR_03_F",nil,1000],
						["srifle_DMR_03_khaki_F",nil,1000],
						["srifle_DMR_03_multicam_F",nil,1000],
						["srifle_DMR_03_spotter_F",nil,1000],
						["srifle_DMR_03_tan_F",nil,1000],
						["srifle_DMR_03_woodland_F",nil,1000],

						//Ammo:
						["20Rnd_762x51_Mag",nil,1000],



						//ASP-1 Kir 12.7 mm
						["srifle_DMR_04_F",nil,1000],
						["srifle_DMR_04_Tan_F",nil,1000],

						//Ammo:
						["10Rnd_127x54_Mag",nil,1000],


						//Cyrus 9.3 mm
						["srifle_DMR_05_blk_F",nil,1000],
						["srifle_DMR_05_hex_F",nil,1000],
						["srifle_DMR_05_tan_F",nil,1000],

						//Ammo:
						["10Rnd_93x64_DMR_05_Mag",nil,1000],


						//Mk 14 7.62 mm
						["srifle_DMR_06_camo_F",nil,1000],
						["srifle_DMR_06_olive_F",nil,1000],

						//Ammo:
						["20Rnd_762x51_Mag",nil,1000],

						//DLC Items und Optiken

						["bipod_01_F_blk",nil,1000],
						["bipod_01_F_mtp",nil,1000],
						["bipod_01_F_snd",nil,1000],
						["bipod_02_F_blk",nil,1000],
						["bipod_02_F_hex",nil,1000],
						["bipod_02_F_tan",nil,1000],
						["bipod_03_F_blk",nil,1000],
						["bipod_03_F_oli",nil,1000],
						
						//Schalldämpfer/Muzzles:

						//.338er:
						["muzzle_snds_338_black",nil,1000],
						["muzzle_snds_338_green",nil,1000],
						["muzzle_snds_338_sand",nil,1000],
						
						//9.3er:
						["muzzle_snds_93mmg",nil,1000],
						["muzzle_snds_93mmg_tan",nil,1000],
						
						//7.62mm:
						["muzzle_snds_B",nil,1000],

						//MG Leicht
						["muzzle_snds_H_MG",nil,1000],
						
						//6.5mm
						["muzzle_snds_H",nil,1000],

						//9mm
						["muzzle_snds_L",nil,650],

						//Visiere/Scopes
						
						//Advanced Marksmen Scope (AMS):    3x-10x Vergrößerung
						["optic_AMS",nil,1000],
						["optic_AMS_base",nil,1000],
						["optic_AMS_khk",nil,1000],
						["optic_AMS_snd",nil,1000],
						
						//Kaliha (KHS):    5x-11x Vergrößerung
						["optic_KHS_base",nil,1000],
						["optic_KHS_blk",nil,1000],
						["optic_KHS_hex",nil,1000],
						["optic_KHS_old",nil,1000],
						["optic_KHS_tan",nil,1000],							
						
						//ACO	
						["optic_Aco_smg",nil,1000],
						["optic_ACO_grn_smg",nil,1000],

						//Holo
						["optic_Holosight",nil,1000],
						["optic_Holosight_smg",nil,1000],

						//Hamr
						["optic_Hamr",nil,1000],

						//NVS
						["optic_NVS",nil,1000],

						//ARCO
						["optic_Arco",nil,1000],

						//MRCO
						["optic_MRCO",nil,1000],

						//MOS
						["optic_SOS",nil,1000],

						//DMS
						["optic_DMS",nil,1000],

						//LRPS
						["optic_LRPS",nil,1000],	

						
						// Items Waffen
						["acc_flashlight","Taktische Lampe",50],
						["acc_pointer_IR","IR Laser",50],
						
						//Granaten
						["SmokeShellGreen","Reizgas",100],
						["HandGrenade_Stone","Flashbang",400],

						// Kits
						["FirstAidKit","Erste Hilfe",50],
						["ToolKit","Werkzeugkasten",250],
						
						// Optik - Hand
						["NVGoggles_OPFOR",nil,2000],
						["O_UavTerminal",nil,2000],
						["ItemGPS",nil,0],
						["Rangefinder","Distanzmesser",500],
						["Binocular","Feldstecher",0],

						// Funkgeräte
						["ItemRadio","Handy",500],
						
						//BlueFor
						["tf_anprc152",nil,50],
						["tf_rt1523g_fabric",nil,50],
						["tf_anarc210",nil,50]
						/*
						//Indep
						["tf_anprc148jem",nil,50],
						["tf_anprc155",nil,50],
						["tf_anarc164",nil,50],
						*/

						/*
						//OPFOR
						["tf_fadak",nil,50],
						["tf_mr3000_rhs",nil,50],
						["tf_mr6000l",nil,50],
						*/
					]
				];
			};
		};
	};
	
	case "cop_leader":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Staatsdiener!"};
			case (__GETC__(life_coplevel) != 9): {"Du bist kein Polizeipräsident!"};
			default
			{
				["Polizeipräsident",
					[
						//Tazer Pistole
						["hgun_Pistol_heavy_01_snds_F","Taser",2000],

						//Ammo
						["11Rnd_45ACP_Mag",nil,50],

						//Optic
						["optic_MRD","Visier Taser",100],

						//Tazer Gewehr
						["SMG_02_F","Tasergewehr",5000],

						//Ammo
						["30Rnd_9x21_Mag",nil,200],
						

						//SMG 

						//Kris Vector .45ACP SMG
						["SMG_01_F",nil,10000],
						["30Rnd_45ACP_Mag_SMG_01",nil,500],

						//Gewehre

						//MX 
						["arifle_MXC_Black_F",nil,6500],
						["arifle_MXM_Black_F",nil,9000],
						["arifle_MX_GL_Black_F",nil,10000],
						["arifle_MX_SW_Black_F",nil,15000],
						

						//Ammo
						["30Rnd_65x39_caseless_mag_Tracer",nil,200],
						["30Rnd_65x39_caseless_mag",nil,200],
						["100Rnd_65x39_caseless_mag_Tracer",nil,200],

						//40mm Granaten
						["1Rnd_SmokeGreen_Grenade_shell",nil,200],
						["1Rnd_HE_Grenade_shell",nil,200],
						["UGL_FlareYellow_F",nil,200],
						
						//MK200
						["LMG_Mk200_F",nil,15000],

						//Ammo
						["200Rnd_65x39_cased_Box_Tracer",nil,400],
						
						//Mk18
						["srifle_EBR_F",nil,20000],

						//Ammo
						["20Rnd_762x51_Mag",nil,250],
						
						
						//DLC Waffen 

						//.408 LRR 
						//["srifle_LRR_F",nil,1000],

						//Ammo:
						//["7Rnd_408_Mag",nil,100],
						

						//.338 Norma Magnum - Medium Maschine Gun
						["MMG_01_base_F",nil,1000],
						["MMG_01_hex_F",nil,1000],
						["MMG_01_tan_F",nil,1000],
						//Ammo: 
						["130Rnd_338_Mag",nil,100],

						//9.3mm HK 121 - Maschine Gun
						["MMG_02_base_F",nil,1000],
						["MMG_02_black_F",nil,1000],
						["MMG_02_camo_F",nil,1000],
						["MMG_02_sand_F",nil,1000],


						//Ammo:
						["150Rnd_93x64_Mag",nil,1000],


						//MAR-10 .338
						["srifle_DMR_02_camo_F",nil,1000],
						["srifle_DMR_02_F",nil,1000],
						["srifle_DMR_02_sniper_F",nil,1000],


						//Ammo:
						["10Rnd_338_Mag",nil,1000],


						//Mk-I EMR 7.62 mm
						["srifle_DMR_03_F",nil,1000],
						["srifle_DMR_03_khaki_F",nil,1000],
						["srifle_DMR_03_multicam_F",nil,1000],
						["srifle_DMR_03_spotter_F",nil,1000],
						["srifle_DMR_03_tan_F",nil,1000],
						["srifle_DMR_03_woodland_F",nil,1000],

						//Ammo:
						["20Rnd_762x51_Mag",nil,1000],



						//ASP-1 Kir 12.7 mm
						["srifle_DMR_04_F",nil,1000],
						["srifle_DMR_04_Tan_F",nil,1000],

						//Ammo:
						["10Rnd_127x54_Mag",nil,1000],


						//Cyrus 9.3 mm
						["srifle_DMR_05_blk_F",nil,1000],
						["srifle_DMR_05_hex_F",nil,1000],
						["srifle_DMR_05_tan_F",nil,1000],

						//Ammo:
						["10Rnd_93x64_DMR_05_Mag",nil,1000],


						//Mk 14 7.62 mm
						["srifle_DMR_06_camo_F",nil,1000],
						["srifle_DMR_06_olive_F",nil,1000],

						//Ammo:
						["20Rnd_762x51_Mag",nil,1000],

						//DLC Items und Optiken

						["bipod_01_F_blk",nil,1000],
						["bipod_01_F_mtp",nil,1000],
						["bipod_01_F_snd",nil,1000],
						["bipod_02_F_blk",nil,1000],
						["bipod_02_F_hex",nil,1000],
						["bipod_02_F_tan",nil,1000],
						["bipod_03_F_blk",nil,1000],
						["bipod_03_F_oli",nil,1000],
						
						//Schalldämpfer/Muzzles:

						//.338er:
						["muzzle_snds_338_black",nil,1000],
						["muzzle_snds_338_green",nil,1000],
						["muzzle_snds_338_sand",nil,1000],
						
						//9.3er:
						["muzzle_snds_93mmg",nil,1000],
						["muzzle_snds_93mmg_tan",nil,1000],
						
						//7.62mm:
						["muzzle_snds_B",nil,1000],

						//MG Leicht
						["muzzle_snds_H_MG",nil,1000],
						
						//6.5mm
						["muzzle_snds_H",nil,1000],

						//9mm
						["muzzle_snds_L",nil,650],



						//Visiere/Scopes
						
						//Advanced Marksmen Scope (AMS):    3x-10x Vergrößerung
						["optic_AMS",nil,1000],
						["optic_AMS_base",nil,1000],
						["optic_AMS_khk",nil,1000],
						["optic_AMS_snd",nil,1000],
						
						//Kaliha (KHS):    5x-11x Vergrößerung
						["optic_KHS_base",nil,1000],
						["optic_KHS_blk",nil,1000],
						["optic_KHS_hex",nil,1000],
						["optic_KHS_old",nil,1000],
						["optic_KHS_tan",nil,1000],							
						
						//ACO	
						["optic_Aco_smg",nil,1000],
						["optic_ACO_grn_smg",nil,1000],

						//Holo
						["optic_Holosight",nil,1000],
						["optic_Holosight_smg",nil,1000],

						//Hamr
						["optic_Hamr",nil,1000],

						//NVS
						["optic_NVS",nil,1000],

						//ARCO
						["optic_Arco",nil,1000],

						//MRCO
						["optic_MRCO",nil,1000],

						//MOS
						["optic_SOS",nil,1000],

						//DMS
						["optic_DMS",nil,1000],

						//LRPS
						["optic_LRPS",nil,1000],	

						
						// Items Waffen
						["acc_flashlight","Taktische Lampe",50],
						["acc_pointer_IR","IR Laser",50],
						
						//Granaten
						["SmokeShellGreen","Reizgas",100],
						["HandGrenade_Stone","Flashbang",400],

						// Kits
						["FirstAidKit","Erste Hilfe",50],
						["ToolKit","Werkzeugkasten",250],
						
						// Optik - Hand
						["NVGoggles_INDEP",nil,2000],
						["ItemGPS",nil,0],
						["Rangefinder","Distanzmesser",500],
						["Binocular","Feldstecher",0],

						// Funkgeräte
						["ItemRadio","Handy",500],
						
						//BlueFor
						["tf_anprc152",nil,50],
						["tf_rt1523g_fabric",nil,50],
						["tf_anarc210",nil,50]
						
						/*
						//Indep
						["tf_anprc148jem",nil,50],
						["tf_anprc155",nil,50],
						["tf_anarc164",nil,50],
						*/

						/*
						//OPFOR
						["tf_fadak",nil,50],
						["tf_mr3000_rhs",nil,50],
						["tf_mr6000l",nil,50],
						*/
					]
				];
			};
		};
	};
	
	

	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"Du bist kein Sanitäter!"};
			default {
				["Krankenhaus Sanitäter Shop",
					[
						["ItemGPS",nil,100],
						["Medikit",nil,100],
						["Binocular",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["NVGoggles_OPFOR",nil,1200],
						["ItemRadio","Handy",500]
					]
				];
			};
		};
	};
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist"};
			case (!license_civ_rebel): {"Du hast keine Rebellenlizenz!"};
			default
			{
				["Mohammed's Jihadi Shop",
					[

						//TRG20
						["arifle_TRG20_F",nil,25000],
						["30Rnd_556x45_Stanag",nil,100],

						//SDAR UWR
						["arifle_SDAR_F",nil,15000],
						["20Rnd_556x45_UW_mag","UW",1000],

						//Katiba 
						["arifle_Katiba_F",nil,15000],
						["30Rnd_65x39_caseless_green",nil,500],

						//MK20
						["arifle_Mk20_F",nil,30000],
						["30Rnd_65x39_caseless_mag",nil,500],	

						//MXSW					
						["arifle_MX_SW_F",nil,75000],
						["100Rnd_65x39_caseless_mag",nil,1000],

						//MK 200 LMG 6.5mm 
						["LMG_Mk200_F",nil,650000],
						//Ammo
						["200Rnd_65x39_cased_Box",nil,1500],

						//Kris Vector .45 ACP SMG
						["SMG_01_F",nil,10000],
						//Ammo
						["30Rnd_45ACP_Mag_SMG_01",nil,500],

						//MK18 EBR 7.62mm
						["srifle_EBR_F",nil,100000],
						//Ammo
						["20Rnd_762x51_Mag",nil,500],

							/*
						//Tazer Pistole
						["hgun_Pistol_heavy_01_snds_F","Taser",2000],

						//Ammo
						["11Rnd_45ACP_Mag",nil,50],

						//Optic
						["optic_MRD","Visier Taser",100],

						//Tazer Gewehr
						["SMG_02_F","Tasergewehr",5000],

						//Ammo
						["30Rnd_9x21_Mag",nil,200],
						

						//Gewehre

						//MX 
						["arifle_MXC_F",nil,6500],
						["arifle_MXM_F",nil,9000],
							*/

						/*
						["arifle_MX_GL_Black_F",nil,10000],
						["arifle_MX_SW_Black_F",nil,15000],
						*/

						//Ammo
						["30Rnd_65x39_caseless_mag_Tracer",nil,200],
						["30Rnd_65x39_caseless_mag",nil,200],
							/*
						["100Rnd_65x39_caseless_mag_Tracer",nil,200],

						//40mm Granaten
						["1Rnd_SmokeGreen_Grenade_shell",nil,200],
						["1Rnd_HE_Grenade_shell",nil,200],
						["UGL_FlareYellow_F",nil,200],
							*/
						
						//MK200
						["LMG_Mk200_F",nil,15000],

						//Ammo
						["200Rnd_65x39_cased_Box_Tracer",nil,400],
						
						//Mk18
						["srifle_EBR_F",nil,20000],

						//Ammo
						["20Rnd_762x51_Mag",nil,250],
						
						/*
						//DLC Waffen 

						//.408 LRR 
						//["srifle_LRR_F",nil,1000],

						//Ammo:
						//["7Rnd_408_Mag",nil,100],
						
						*/

						//.338 Norma Magnum - Medium Maschine Gun
						["MMG_01_base_F",nil,65000],
						["130Rnd_338_Mag",nil,3000],
						
							/*
						//["MMG_01_hex_F",nil,45000],
						//["MMG_01_tan_F",nil,45000],
							*/

						//9.3mm HK 121 - Maschine Gun
						["MMG_02_base_F",nil,1000],

						/*
						["MMG_02_black_F",nil,1000],
						["MMG_02_camo_F",nil,1000],
						["MMG_02_sand_F",nil,1000],
						*/


						//Ammo:
						["150Rnd_93x64_Mag",nil,1000],
						
							/*
						//MAR-10 .338
						["srifle_DMR_02_camo_F",nil,1000],
						["srifle_DMR_02_F",nil,1000],
						["srifle_DMR_02_sniper_F",nil,1000],


						//Ammo:
						//["10Rnd_338_Mag",nil,1000],
							*/

						//Mk-I EMR 7.62 mm
						["srifle_DMR_03_F",nil,45000],
						/*
						["srifle_DMR_03_khaki_F",nil,1000],
						["srifle_DMR_03_multicam_F",nil,1000],
						["srifle_DMR_03_spotter_F",nil,1000],
						["srifle_DMR_03_tan_F",nil,1000],
						["srifle_DMR_03_woodland_F",nil,1000],
						*/
						//Ammo:
						["20Rnd_762x51_Mag",nil,1000],


							/*
						//ASP-1 Kir 12.7 mm
						["srifle_DMR_04_F",nil,1000],
						["srifle_DMR_04_Tan_F",nil,1000],

						//Ammo:
						["10Rnd_127x54_Mag",nil,1000],
						

						//Cyrus 9.3 mm
						["srifle_DMR_05_blk_F",nil,1000],
						["srifle_DMR_05_hex_F",nil,1000],
						["srifle_DMR_05_tan_F",nil,1000],

						//Ammo:
						["10Rnd_93x64_DMR_05_Mag",nil,1000],
							*/

						//Mk 14 7.62 mm
						//["srifle_DMR_06_camo_F",nil,1000],
						["srifle_DMR_06_olive_F",nil,45000],

						//Ammo:
						["20Rnd_762x51_Mag",nil,1000],

						//DLC Items und Optiken

						//["bipod_01_F_blk",nil,1000],
						["bipod_01_F_mtp",nil,1000],
						/*
						["bipod_01_F_snd",nil,1000],
						["bipod_02_F_blk",nil,1000],
						["bipod_02_F_hex",nil,1000],
						["bipod_02_F_tan",nil,1000],
						["bipod_03_F_blk",nil,1000],
						["bipod_03_F_oli",nil,1000],
						*/
						
						//Schalldämpfer/Muzzles:

						//.338er:
						//["muzzle_snds_338_black",nil,1000],
						//["muzzle_snds_338_green",nil,66000],
						//["muzzle_snds_338_sand",nil,1000],
						
						//9.3er:
						//["muzzle_snds_93mmg",nil,1000],
						//["muzzle_snds_93mmg_tan",nil,1000],
						
						//7.62mm:
						["muzzle_snds_B",nil,1000],

						//MG Leicht
						["muzzle_snds_H_MG",nil,1000],
						
						//6.5mm
						["muzzle_snds_H",nil,1000],

						//9mm
						["muzzle_snds_L",nil,650],



						//Visiere/Scopes
						
						//Advanced Marksmen Scope (AMS):    3x-10x Vergrößerung
						["optic_AMS",nil,5000],
						/*
						["optic_AMS_base",nil,1000],
						["optic_AMS_khk",nil,1000],
						["optic_AMS_snd",nil,1000],
						*/
						//Kaliha (KHS):    5x-11x Vergrößerung
						["optic_KHS_base",nil,5000],
						/*
						["optic_KHS_blk",nil,1000],
						["optic_KHS_hex",nil,1000],
						["optic_KHS_old",nil,1000],
						["optic_KHS_tan",nil,1000],	
						*/						
						
						//ACO	
						["optic_Aco_smg",nil,1000],
						["optic_ACO_grn_smg",nil,1000],

						//Holo
						["optic_Holosight",nil,1000],
						["optic_Holosight_smg",nil,1000],

						//Hamr
						["optic_Hamr",nil,1000],

						//NVS
						["optic_NVS",nil,1000],

						//ARCO
						["optic_Arco",nil,1000],

						//MRCO
						["optic_MRCO",nil,1000],

						//MOS
						["optic_SOS",nil,10000],

						//DMS
						["optic_DMS",nil,10000],

						//LRPS
						//["optic_LRPS",nil,30000],	

						
						// Items Waffen
						["acc_flashlight","Taktische Lampe",250],
						["acc_pointer_IR","IR Laser",250],
						
						//Granaten
						//["SmokeShellGreen","Reizgas",100],
						//["HandGrenade_Stone","Flashbang",400],

						// Kits
						["FirstAidKit","Erste Hilfe",50],
						["ToolKit","Werkzeugkasten",250],
						
						// Optik - Hand
						["NVGoggles",nil,2000],
						["ItemGPS",nil,100],
						["Rangefinder","Distanzmesser",6000],
						["Binocular","Feldstecher",100],

						// Funkgeräte
						/*
						//BlueFor
						["tf_anprc152",nil,50],
						["tf_rt1523g_fabric",nil,50],
						["tf_anarc210",nil,50],
						*/
						/*
						//Indep
						["tf_anprc148jem",nil,50],
						["tf_anprc155",nil,50],
						["tf_anarc164",nil,50],
						*/

						
						//OPFOR
						["tf_fadak",nil,50],
						["tf_mr3000_rhs",nil,50],
						["tf_mr6000l",nil,50],

						["ItemRadio","Handy",500]
					]
				];
			};
		};
	};

	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (!license_civ_gun): {"Du hast keinen Waffenschein!"};
			default
			{
				["Billy Joe's Waffenladen",
					[
						["hgun_Rook40_F",nil,6500],
						["16Rnd_9x21_Mag",nil,100],
						["hgun_ACPC2_F",nil,11500],
						["9Rnd_45ACP_Mag",nil,130],
						["hgun_Pistol_heavy_02_F",nil,10000],
						["6Rnd_45ACP_Cylinder",nil,100],
						["hgun_PDW2000_F",nil,20000],
						["30Rnd_9x21_Mag",nil,200],

						/*
						
						//DLC Waffen 

						//.338 Norma Magnum - Medium Maschin Gun

						["MMG_01_base_F",nil,1000],
						["MMG_01_hex_ACRO_LP_F",nil,1000],
						["MMG_01_hex_F",nil,1000],
						["MMG_01_tan_F",nil,1000],

						["MMG_02_base_F",nil,1000],
						["MMG_02_black_F",nil,1000],
						["MMG_02_camo_F",nil,1000],
						["MMG_02_sand_F",nil,1000],
						["MMG_02_sand_RCO_LP_F",nil,1000],

						//Ammo:

						["150Rnd_93x64_Mag",nil,1000],


						//MAR-10 .338

						["srifle_DMR_02_ACO_F",nil,1000],
						["srifle_DMR_02_ARCO_F",nil,1000],
						["srifle_DMR_02_camo_AMS_LP_F",nil,1000],
						["srifle_DMR_02_camo_F",nil,1000],
						["srifle_DMR_02_DMS_F",nil,1000],
						["srifle_DMR_02_F",nil,1000],
						["srifle_DMR_02_MRCO_F",nil,1000],
						["srifle_DMR_02_sniper_AMS_LP_S_F",nil,1000],
						["srifle_DMR_02_sniper_F",nil,1000],
						["srifle_DMR_02_SOS_F",nil,1000],

						//Ammo:

						["10Rnd_338_Mag",nil,1000],


						//Mk-I EMR 7.62 mm

						["srifle_DMR_03_ACO_F",nil,1000],
						["srifle_DMR_03_ARCO_F",nil,1000],
						["srifle_DMR_03_DMS_F",nil,1000],
						["srifle_DMR_03_DMS_snds_F",nil,1000],
						["srifle_DMR_03_F",nil,1000],
						["srifle_DMR_03_khaki_F",nil,1000],
						["srifle_DMR_03_MRCO_F",nil,1000],
						["srifle_DMR_03_multicam_F",nil,1000],
						["srifle_DMR_03_SOS_F",nil,1000],
						["srifle_DMR_03_spotter_F",nil,1000],
						["srifle_DMR_03_tan_AMS_LP_F",nil,1000],
						["srifle_DMR_03_tan_F",nil,1000],
						["srifle_DMR_03_woodland_F",nil,1000],

						//Ammo:

						["20Rnd_762x51_Mag",nil,1000],



						//ASP-1 Kir 12.7 mm

						["srifle_DMR_04_ACO_F",nil,1000],
						["srifle_DMR_04_ARCO_F",nil,1000],
						["srifle_DMR_04_DMS_F",nil,1000],
						["srifle_DMR_04_F",nil,1000],
						["srifle_DMR_04_MRCO_F",nil,1000],
						["srifle_DMR_04_NS_LP_F",nil,1000],
						["srifle_DMR_04_SOS_F",nil,1000],
						["srifle_DMR_04_Tan_F",nil,1000],

						//Ammo:

						["10Rnd_127x54_Mag",nil,1000],


						//Cyrus 9.3 mm

						["srifle_DMR_05_ACO_F",nil,1000],
						["srifle_DMR_05_ARCO_F",nil,1000],
						["srifle_DMR_05_blk_F",nil,1000],
						["srifle_DMR_05_DMS_F",nil,1000],
						["srifle_DMR_05_DMS_snds_F",nil,1000],
						["srifle_DMR_05_hex_F",nil,1000],
						["srifle_DMR_05_KHS_LP_F",nil,1000],
						["srifle_DMR_05_MRCO_F",nil,1000],
						["srifle_DMR_05_SOS_F",nil,1000],
						["srifle_DMR_05_tan_F",nil,1000],

						//Ammo:

						["10Rnd_93x64_DMR_05_Mag",nil,1000],


						//Mk 14 7.62 mm

						["srifle_DMR_06_camo_F",nil,1000],
						["srifle_DMR_06_camo_khs_F",nil,1000],
						["srifle_DMR_06_olive_F",nil,1000],

						//Ammo:

						["20Rnd_762x51_Mag",nil,1000],
						

						//DLC Items und Optiken

						["bipod_01_F_blk",nil,1000],
						["bipod_01_F_mtp",nil,1000],
						["bipod_01_F_snd",nil,1000],
						["bipod_02_F_blk",nil,1000],
						["bipod_02_F_hex",nil,1000],
						["bipod_02_F_tan",nil,1000],
						["bipod_03_F_blk",nil,1000],
						["bipod_03_F_oli",nil,1000],
						
						//Schalldämpfer/Muzzles:
						//.338er:
						["muzzle_snds_338_black",nil,1000],
						["muzzle_snds_338_green",nil,1000],
						["muzzle_snds_338_sand",nil,1000],
						
						//9.3er:
						["muzzle_snds_93mmg",nil,1000],
						["muzzle_snds_93mmg_tan",nil,1000],
						

						
						//_____________________________________
						
						//Visiere/Scopes
						
						//Advanced Marksmen Scope (AMS):    3x-10x Vergrößerung
						["optic_AMS",nil,1000],
						["optic_AMS_base",nil,1000],
						["optic_AMS_khk",nil,1000],
						["optic_AMS_snd",nil,1000],
						
						//Kaliha (KHS):    5x-11x Vergrößerung
						["optic_KHS_base",nil,1000],
						["optic_KHS_blk",nil,1000],
						["optic_KHS_hex",nil,1000],
						["optic_KHS_old",nil,1000],
						["optic_KHS_tan",nil,1000],						

						*/

						["optic_Aco_smg",nil,1000],
						["optic_ACO_grn_smg",nil,1000],
						["optic_Holosight",nil,2500],
						["optic_Holosight_smg",nil,2500],

						["V_Rangemaster_belt",nil,4900]
					]
				];
			};
		};
	};
	
	case "gang":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			default
			{
				["Rüstungsversteck",
					[
						["hgun_Rook40_F",nil,6500],
						["16Rnd_9x21_Mag",nil,100],
						["hgun_ACPC2_F",nil,11500],
						["9Rnd_45ACP_Mag",nil,130],
						["hgun_Pistol_heavy_02_F",nil,10000],
						["6Rnd_45ACP_Cylinder",nil,100],
						["hgun_PDW2000_F",nil,20000],
						["30Rnd_9x21_Mag",nil,200],


						/*
						
						//DLC Waffen 

						//.338 Norma Magnum - Medium Maschin Gun

						["MMG_01_base_F",nil,1000],
						["MMG_01_hex_ACRO_LP_F",nil,1000],
						["MMG_01_hex_F",nil,1000],
						["MMG_01_tan_F",nil,1000],

						["MMG_02_base_F",nil,1000],
						["MMG_02_black_F",nil,1000],
						["MMG_02_camo_F",nil,1000],
						["MMG_02_sand_F",nil,1000],
						["MMG_02_sand_RCO_LP_F",nil,1000],

						//Ammo:

						["150Rnd_93x64_Mag",nil,1000],


						//MAR-10 .338

						["srifle_DMR_02_ACO_F",nil,1000],
						["srifle_DMR_02_ARCO_F",nil,1000],
						["srifle_DMR_02_camo_AMS_LP_F",nil,1000],
						["srifle_DMR_02_camo_F",nil,1000],
						["srifle_DMR_02_DMS_F",nil,1000],
						["srifle_DMR_02_F",nil,1000],
						["srifle_DMR_02_MRCO_F",nil,1000],
						["srifle_DMR_02_sniper_AMS_LP_S_F",nil,1000],
						["srifle_DMR_02_sniper_F",nil,1000],
						["srifle_DMR_02_SOS_F",nil,1000],

						//Ammo:

						["10Rnd_338_Mag",nil,1000],


						//Mk-I EMR 7.62 mm

						["srifle_DMR_03_ACO_F",nil,1000],
						["srifle_DMR_03_ARCO_F",nil,1000],
						["srifle_DMR_03_DMS_F",nil,1000],
						["srifle_DMR_03_DMS_snds_F",nil,1000],
						["srifle_DMR_03_F",nil,1000],
						["srifle_DMR_03_khaki_F",nil,1000],
						["srifle_DMR_03_MRCO_F",nil,1000],
						["srifle_DMR_03_multicam_F",nil,1000],
						["srifle_DMR_03_SOS_F",nil,1000],
						["srifle_DMR_03_spotter_F",nil,1000],
						["srifle_DMR_03_tan_AMS_LP_F",nil,1000],
						["srifle_DMR_03_tan_F",nil,1000],
						["srifle_DMR_03_woodland_F",nil,1000],

						//Ammo:

						["20Rnd_762x51_Mag",nil,1000],



						//ASP-1 Kir 12.7 mm

						["srifle_DMR_04_ACO_F",nil,1000],
						["srifle_DMR_04_ARCO_F",nil,1000],
						["srifle_DMR_04_DMS_F",nil,1000],
						["srifle_DMR_04_F",nil,1000],
						["srifle_DMR_04_MRCO_F",nil,1000],
						["srifle_DMR_04_NS_LP_F",nil,1000],
						["srifle_DMR_04_SOS_F",nil,1000],
						["srifle_DMR_04_Tan_F",nil,1000],

						//Ammo:

						["10Rnd_127x54_Mag",nil,1000],


						//Cyrus 9.3 mm

						["srifle_DMR_05_ACO_F",nil,1000],
						["srifle_DMR_05_ARCO_F",nil,1000],
						["srifle_DMR_05_blk_F",nil,1000],
						["srifle_DMR_05_DMS_F",nil,1000],
						["srifle_DMR_05_DMS_snds_F",nil,1000],
						["srifle_DMR_05_hex_F",nil,1000],
						["srifle_DMR_05_KHS_LP_F",nil,1000],
						["srifle_DMR_05_MRCO_F",nil,1000],
						["srifle_DMR_05_SOS_F",nil,1000],
						["srifle_DMR_05_tan_F",nil,1000],

						//Ammo:

						["10Rnd_93x64_DMR_05_Mag",nil,1000],


						//Mk 14 7.62 mm

						["srifle_DMR_06_camo_F",nil,1000],
						["srifle_DMR_06_camo_khs_F",nil,1000],
						["srifle_DMR_06_olive_F",nil,1000],

						//Ammo:

						["20Rnd_762x51_Mag",nil,1000],

						//DLC Items und Optiken

						["bipod_01_F_blk",nil,1000],
						["bipod_01_F_mtp",nil,1000],
						["bipod_01_F_snd",nil,1000],
						["bipod_02_F_blk",nil,1000],
						["bipod_02_F_hex",nil,1000],
						["bipod_02_F_tan",nil,1000],
						["bipod_03_F_blk",nil,1000],
						["bipod_03_F_oli",nil,1000],
						
						//Schalldämpfer/Muzzles:
						//.338er:
						["muzzle_snds_338_black",nil,1000],
						["muzzle_snds_338_green",nil,1000],
						["muzzle_snds_338_sand",nil,1000],
						
						//9.3er:
						["muzzle_snds_93mmg",nil,1000],
						["muzzle_snds_93mmg_tan",nil,1000],
						

						
						//_____________________________________
						
						//Visiere/Scopes
						
						//Advanced Marksmen Scope (AMS):    3x-10x Vergrößerung
						["optic_AMS",nil,1000],
						["optic_AMS_base",nil,1000],
						["optic_AMS_khk",nil,1000],
						["optic_AMS_snd",nil,1000],
						
						//Kaliha (KHS):    5x-11x Vergrößerung
						["optic_KHS_base",nil,1000],
						["optic_KHS_blk",nil,1000],
						["optic_KHS_hex",nil,1000],
						["optic_KHS_old",nil,1000],
						["optic_KHS_tan",nil,1000],							
						*/

						["optic_Aco_smg",nil,1000],
						["optic_ACO_grn_smg",nil,1000],
						["optic_Holosight",nil,2500],
						["optic_Holosight_smg",nil,2500],

						["V_Rangemaster_belt",nil,4900]
					]
				];
			};
		};
	};
	
	case "genstore":
	{
		["Altis General Store",
			[
				["Binocular",nil,150],
				["ItemGPS",nil,100],
				["ToolKit",nil,500],
				["FirstAidKit",nil,600],
				["NVGoggles",nil,3000],

				// Funkgeräte
				["ItemRadio","Handy",500],
				/*
				//BlueFor
				["tf_anprc152",nil,50],
				["tf_rt1523g_fabric",nil,50],
				["tf_anarc210",nil,50]
				*/
				/*
				//Indep
				["tf_anprc148jem",nil,50],
				["tf_anprc155",nil,50],
				["tf_anarc164",nil,50],
				*/
				
				//OPFOR
				["tf_fadak",nil,50],
				["tf_mr3000_rhs",nil,50],
				["tf_mr6000l",nil,50]	
			]
		];
	};
	
	case "tankstelle":
	{
		["Werkzeugladen",
			[
				["Binocular",nil,500],
				["ItemGPS",nil,500],
				["Itemwatch",nil,750],
				["ItemCompass",nil,1000],
				["ItemMap",nil,1000],
				["ToolKit",nil,2500],
				["FirstAidKit",nil,1000],
				["NVGoggles",nil,4000],
				["ItemRadio","Handy",800]
			]
		];
	};
	
	case "adac_zubehoer":
	{
		["ADAC Zubehör",
			[
				["Binocular",nil,500],
				["ItemGPS",nil,500],
				["Itemwatch",nil,750],
				["ItemCompass",nil,1000],
				["ItemMap",nil,1000],
				["ToolKit",nil,2500],
				["FirstAidKit",nil,1000],
				["NVGoggles",nil,4000],

				// Funkgeräte
				["ItemRadio","Handy",500],
				/*
				//BlueFor
				["tf_anprc152",nil,50],
				["tf_rt1523g_fabric",nil,50],
				["tf_anarc210",nil,50]
				*/
				//Indep
				["tf_anprc148jem",nil,50],
				["tf_anprc155",nil,50],
				["tf_anarc164",nil,50]
				/*
				//OPFOR
				["tf_fadak",nil,50],
				["tf_mr3000_rhs",nil,50],
				["tf_mr6000l",nil,50]	
				*/
			]
		];
	};
};
