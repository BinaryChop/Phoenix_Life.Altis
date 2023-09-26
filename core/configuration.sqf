#include <macro.h>
/*
	Master Life Configuration File
	This file is to setup variables for the client, there are still other configuration files in the system

*****************************
****** Backend Variables *****
*****************************
*/
life_query_time = time;
life_action_delay = time;
life_trunk_vehicle = Objnull;
life_session_completed = false;
life_garage_store = false;
life_session_tries = 0;
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_clothing_filter = 0;
life_clothing_uniform = -1;
life_redgull_effect = time;
life_is_processing = false;
life_bail_paid = false;
life_impound_inuse = false;
life_action_inUse = false;
life_action_Gather = false;
life_spikestrip = ObjNull;
// life_has_insurance = false;
life_respawn_timer = .1; //Scaled in minutes
life_knockout = false;
life_interrupted = false;
life_respawned = false;
life_removeWanted = false;
life_pole = ObjNull;                //Lichtkegel
life_action_polePickup = false;		////////////
life_bark = ObjNull;				//Staßensperre
life_action_barkPickup = false;		//////////////
life_licht = ObjNull;				//Scheinwerfer
life_action_lichtPickup = false;	//////////////
life_god = false; 					//Admintool
life_frozen = false; 				//Admintool
life_markers = false; 				//Admintool
life_request_timer = false;
life_fadeSound = false;
life_drink = 0;

//Persistent Saving
__CONST__(life_save_civ,True); //Save weapons for civs?
__CONST__(life_save_yinv,TRUE); //Save Y-Inventory for civs and cops? (Medics excluded for now)

//Revive constant variables.
__CONST__(life_revive_cops,TRUE); //Set to false if you don't want cops to be able to revive downed players.
__CONST__(life_revive_fee,3000); //Fee for players to pay when revived.

//House Limit
__CONST__(life_houseLimit,4); //Maximum amount of houses a player can buy (TODO: Make Tiered licenses).

//Gang related stuff?
__CONST__(life_gangPrice,200000); //Price for creating a gang (They're all persistent so keep it high to avoid 345345345 gangs).
__CONST__(life_gangUpgradeBase,100000); //MASDASDASD
__CONST__(life_gangUpgradeMultipler,2.5); //BLAH

//Uniform price (0),Hat Price (1),Glasses Price (2),Vest Price (3),Backpack Price (4)
life_clothing_purchase = [-1,-1,-1,-1,-1];

/*
*****************************
****** Weight Variables *****
*****************************
*/
life_maxWeight = 200; //Identifies the max carrying weight (gets adjusted throughout game when wearing different types of clothing).
life_maxWeightT = 200; //Static variable representing the players max carrying weight on start.
life_carryWeight = 0; //Represents the players current inventory weight (MUST START AT 0).

/*
*****************************
****** Life Variables *******
*****************************
*/
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_bank_fail = false;
life_use_atm = true;
life_is_arrested = false;
life_delivery_in_progress = false;
life_action_in_use = false;
life_action_Gather = false;
life_thirst = 100;
life_hunger = 100;
life_battery = 95;
/* life_happy = 30; */
__CONST__(life_paycheck_period,5); //Five minutes
life_cash = 0;
__CONST__(life_impound_car,3500);
__CONST__(life_impound_boat,1000);
__CONST__(life_impound_air,4500);
life_istazed = false;
life_my_gang = ObjNull;
life_smartphoneTarget = ObjNull;


life_vehicles = [];
bank_robber = [];
switch (playerSide) do
{
	case west: 
	{
		life_atmcash = 15000; //Starting Bank Money
		life_paycheck = 2500; //Paycheck Amount
	};
	case civilian: 
	{
		life_atmcash = 15000; //Starting Bank Money	
		life_paycheck = 800; //Paycheck Amount		
	};
	case independent: {
		life_atmcash = 15000;
		life_paycheck = 1500;
	};
	case east:
	{
		life_atmcash = 25000; //Starting Bank Money
		life_paycheck = 7000; //Paycheck Amount
	};
};

/*
	Master Array of items?
*/
life_vShop_rentalOnly = ["B_MRAP_01_hmg_F","B_G_Offroad_01_armed_F"];
__CONST__(life_vShop_rentalOnly,life_vShop_rentalOnly); //These vehicles can never be bought and only 'rented'. Used as a balancer & money sink. If you want your server to be chaotic then fine.. Remove it..

life_inv_items =  //Items Ingame Z Menu
[
	//// Pure 
	///////////
	///////////
	///////////
	"life_inv_tbacon",
	"life_inv_rabbit",
	"life_inv_donuts",
	"life_inv_redgull",
	"life_inv_water",
	"life_inv_coffee",
	"life_inv_shoki",
	"life_inv_luckycookie",
	///////////
	///////////
	///////////
	///////////
	///////////
	///////////
	///////////
	///////////
	///////////
	///////////
	///////////
	"life_inv_bppickaxet",
	"life_inv_pickaxet",
	"life_inv_bpaxet",
	"life_inv_axet",
	"life_inv_axe",
	"life_inv_spade",
	"life_inv_hoe",
	///////////
	"life_inv_handcuffs",
	"life_inv_speedtrap",
	"life_inv_speedtrapdetector",
	"life_inv_bark",
	"life_inv_licht",
	"life_inv_laptop",
	"life_inv_pole",
	"life_inv_defusekit",
	"life_inv_spikeStrip",
	///////////
	///////////
	"life_inv_nspray",
	"life_inv_reniger",
	"life_inv_lwatch",
	"life_inv_woodleg",
	"life_inv_lighter",
	"life_inv_calc",
	"life_inv_robo",
	"life_inv_robo1",
	"life_inv_robo2",
	"life_inv_robo3",
	"life_inv_robo4",
	"life_inv_robo5",
	"life_inv_robo6",
	"life_inv_dinobone",
	"life_inv_cables",
	"life_inv_tnt",
	"life_inv_bottles",
	"life_inv_stotagesmall",
	"life_inv_storagebig",
	"life_inv_battery",
	"life_inv_ladegeraet",
	"life_inv_hoergeraet",
	"life_inv_nitro",
	"life_inv_tracker",
	"life_inv_Kabelbinder",
	"life_inv_lockpick",
	"life_inv_pearl",
	///////////
	"life_inv_blastingcharge",
	"life_inv_boltcutter",
	"life_inv_scrapmetal",
	"life_inv_waffenteile",
	"life_inv_patrone",
	"life_inv_projektil",
	"life_inv_schwapu",
	"life_inv_phull",
	"life_inv_fishingpoles",
	/// RAW 
	///////////
	"life_inv_saphiru",
	"life_inv_diamond",
	"life_inv_salt",
	"life_inv_sand",
	"life_inv_ironore",
	"life_inv_copperore",
	"life_inv_goldore",
	"life_inv_titanore",
	"life_inv_ironr",
	"life_inv_rock",
	"life_inv_oilu",
	"life_inv_coalu",
	"life_inv_glass",
	"life_inv_holz",
	///////////
	"life_inv_uranu",
	"life_inv_uranu",
	"life_inv_uranu",
	"life_inv_uranu",
	"life_inv_uranu",
	"life_inv_uranu",
	"life_inv_uranu",
	///////////
	"life_inv_pear",
	"life_inv_apple",
	"life_inv_peach",
	"life_inv_grape",
	"life_inv_wheat",
	"life_inv_rye",
	"life_inv_hops",
	"life_inv_cornmeal",
	"life_inv_yeast",
	"life_inv_mash",
	"life_inv_mehl",
	"life_inv_turtlesoup",
	"life_inv_muschu",
	"life_inv_salema",
	"life_inv_ornate",
	"life_inv_mackerel",
	"life_inv_tuna",
	"life_inv_mullet",
	"life_inv_catshark",
	"life_inv_clam",
	"life_inv_crab",
	///////////
	"life_inv_mohn",
	"life_inv_cannabis",
	"life_inv_cannabis",
	"life_inv_cocaine",
	"life_inv_lsdu",
	"life_inv_methu",
	"life_inv_mohn",
	///////////
	"life_inv_moonshine",
	"life_inv_beer",
	"life_inv_whiskey",
	///////////
	///////////
	///////////
	///////////
	///////////
	///////////
	///////////
	///////////
	"life_inv_wool",
	"life_inv_stoff",
	///////////
	///////////
	///////////
	///////////
	"life_inv_flashu",
	///////////
	/// Processed ///////////
	"life_inv_saphirc",
	"life_inv_diamondc",
	"life_inv_saltr",
	"life_inv_glass",
	"life_inv_ironr",
	"life_inv_copperr",
	"life_inv_goldr",
	"life_inv_titanr",
	"life_inv_steel",
	"life_inv_cement",
	"life_inv_oilp",
	"life_inv_coalr",
	"life_inv_flashp",
	"life_inv_planke",
	///////////
	"life_inv_uranp",
	"life_inv_uranium1",
	"life_inv_uranium2",
	"life_inv_uranium3",
	"life_inv_uranium4",
	"life_inv_puranium",
	"life_inv_ipuranium",
	///////////
	"life_inv_grapep",
	"life_inv_grapep1",
	"life_inv_mehl",
	"life_inv_brot",
	"life_inv_muschp",
	"life_inv_krabbenburger",
	///////////
	"life_inv_heroinp",
	"life_inv_marijuana",
	"life_inv_marijuana1",
	"life_inv_cocainep",
	"life_inv_lsdp",
	"life_inv_methp",
	"life_inv_krokp",
	///////////
	"life_inv_bottledshine",
	"life_inv_bottledbeer",
	"life_inv_bottledwhiskey",
	"life_inv_beerp",
	"life_inv_bottledwine",
	///////////
	///////////
	///////////
	///////////
	///////////
	///////////
	///////////
	///////////
	///////////
	///////////
	///////////
	///////////
	"life_inv_benzin",
	"life_inv_plastic",
	"life_inv_fuelF",
	"life_inv_fuelE",
	///////////
	
	
	"life_inv_flashp"


];

//Setup variable inv vars.
{missionNamespace setVariable[_x,0];} foreach life_inv_items;
//Licenses [license var, civ/cop]   // add also to /core/Config/fn_licenceType >> case 0:  >> case "licence": {_var = "licence_civ_XXX"};       
// to make the licence buyable add lines into NPC Init field @editor : >>   this addAction[format["%1 ($%2)",["license_civ_EXAMPLE"] call life_fnc_varToStr,[(["EXAMPLE"] call life_fnc_licensePrice)] call life_fnc_numberText],life_fnc_buyLicense,"EXAMPLE",0,false,false,"",' !license_civ_EXAMPLE && playerSide == civilian ']; 
life_licenses =
[
	["license_adac_air","med"],
	
	///////////
	["license_civ_saphir","civ"],
	["license_civ_diamond","civ"],
	["license_civ_salt","civ"],
	["license_civ_sand","civ"],
	["license_civ_iron","civ"],
	["license_civ_copper","civ"],
	["license_civ_gold","civ"],
	["license_civ_titan","civ"],
	["license_civ_stahl","civ"],
	["license_civ_cement","civ"],
	["license_civ_oil","civ"],
	["license_civ_coal","civ"],
	["license_civ_lowin","civ"],
	["license_civ_midin","civ"],
	["license_civ_highin","civ"],
	["license_civ_geo1","civ"],
	["license_civ_geo2","civ"],
	["license_civ_geo3","civ"],
	["license_civ_timber","civ"],
	///////////
	["license_civ_Uran","civ"],
	["license_civ_Uran1","civ"],
	["license_civ_Uran2","civ"],
	["license_civ_Uran3 ","civ"],
	["license_civ_Uran4","civ"],
	["license_civ_puranium","civ"],
	["license_civ_ipuranium","civ"],
	///////////
	["license_civ_mash","civ"],
	["license_civ_backery","civ"],
	["license_civ_food 1","civ"],
	["license_civ_food 2","civ"],
	["license_civ_food 3","civ"],
	///////////
	["license_civ_heroin","civ"],
	["license_civ_marijuana","civ"],
	["license_civ_medmarijuana","civ"],
	["license_civ_cocaine","civ"],
	["license_civ_lsd","civ"],
	["license_civ_meth","civ"],
	["license_civ_krok","civ"],
	["license_civ_drug1","civ"],
	["license_civ_drug2","civ"],
	["license_civ_drug3","civ"],
	///////////
	["license_civ_stiller","civ"],
	["license_civ_bottler","civ"],
	["license_civ_liquor","civ"],
	///////////
	["license_civ_chem1","civ"],
	["license_civ_chem2","civ"],
	["license_civ_chem3","civ"],
	///////////
	["license_civ_build","civ"],
	///////////
	["license_civ_schmuck1","civ"],
	["license_civ_schmuck2","civ"],
	///////////
	["license_civ_edel1","civ"],
	["license_civ_edel2","civ"],
	///////////
	["license_civ_addinv","civ"],
	///////////
	["license_civ_skill","civ"],
	///////////
	["license_civ_wp","civ"],
	///////////
	///////////
	///////////
	///////////
	["license_civ_cair","civ"],
	["license_cop_swat","cop"],
	["license_cop_cg","cop"],
	["license_civ_driver","civ"],
	["license_civ_pilot","civ"],
	["license_civ_gang","civ"],
	["license_civ_boat","civ"],
	["license_civ_dive","civ"],
	["license_civ_truck","civ"],
	["license_civ_gun","civ"],
	["license_civ_rebel","civ"],
	["license_med_air","med"],
	["license_civ_home","civ"],
	["license_civ_vmg","civ"],
	["license_cop_kopf","cop"],
	///////////
	///////////
	
	
	
	["license_civ_wp","civ"]

	
];

//Setup License Variables
{missionNamespace setVariable[(_x select 0),false];} foreach life_licenses;

life_dp_points = ["dp_1","dp_2","dp_3","dp_4","dp_5","dp_6","dp_7","dp_8","dp_9","dp_10","dp_11","dp_12","dp_13","dp_14","dp_15","dp_15","dp_16","dp_17","dp_18","dp_19","dp_20","dp_21","dp_22","dp_23","dp_24","dp_25"];
//[shortVar,reward]
life_illegal_items = [["moonshine",9000],["bottledshine",11000],["mash",5000],["tnt",3250],["cannabis",2250],["heroin",1200],["heroinu",1200],["heroinp1",2500],["heroinp2",2500],["heroinp3",2500],["cocaine",1500],["cokep1",3000],["cokep2",3000],["cokep3",3000],["marijuana",2000],["marijuana1",2000],["marijuana2",2000],["marijuana3",2000],["turtle",3000],["blastingcharge",10000],["boltcutter",500],["Kabelbinder",500],["turtlesoup",3000],["turtle",3000],["lockpick",5000],["speedtrap",5000],["handcuffs",500],["spikeStrip",2500],["pole",750],["bark",50],["licht",50],["laptop",500],["meth",2800],["methu",2800],["methp",3500],["lsd",2800],["lsdu",2800],["lsdp",4500]];


/*
	Sell / buy arrays
*/
sell_array = 
[	
	
	/////
	///////////
	["saphiru",650],
	["diamond",750],
	["saltr",1650],
	["glass",1450],
	["ironore",300],
	["copperore",350],
	["goldore",900],
	["titanore",700],
	["steel",3500],
	["cement",1950],
	["oilp",3200],
	["coalu",60],
	["flashp",200],
	///////////
	["uranp",7000],
	///////////
	["pear",620],
	["apple",450],
	["peach",550],
	["grape",400],
	["wheat",1200],
	["rye",2000],
	["hops",1800],
	["cornmeal",200],
	["yeast",2000],
	["mash",2500],
	["brot",3500],
	["tbacon",25],
	["rabbit",35],
	["turtlesoup",1000],
	["muschp",300],
	["salema",45],
	["ornate",40],
	["mackerel",175],
	["tuna",700],
	["mullet",250],
	["catshark",300],
	["clam",400],
	["donuts",10],
	["redgull",200],
	["water",100],
	["coffee",150],
	["shoki",75],
	["luckycookie",4000],
	///////////
	["heroinp",1500],
	["marijuana",1250],
	["marijuana1",1250],
	["cocainep",1500],
	["lsdp",1850],
	["methp",1700],
	["krokp",1000],
	///////////
	["moonshine",7000],
	["beer",4500],
	["whiskey",5000],
	["beerp",4500],
	["bottledwine",7500],
	///////////
	///////////
	///////////
	///////////
	///////////
	///////////
	///////////
	///////////
	["wool",120],
	["stoff",120],
	///////////
	["bppickaxet",50000],
	["pickaxet",250],
	["bpaxet",50000],
	["axe",250],
	["spade",250],
	["hoe",250],
	///////////
	["handcuffs",25],
	["speedtrap",1],
	["speedtrapdetector",100],
	["bark",50],
	["licht",50],
	["laptop",1],
	["pole",1],
	["defusekit",1],
	["spikeStrip",1],
	///////////
	///////////
	["nspray",50],
	["reniger",50],
	["benzin",1300],
	["plastic",400],
	["fuelF",500],
	["fuelE",35],
	["lwatch",3500],
	["woodleg",3000],
	["lighter",30],
	["calc",50],
	["robo",150000],
	["robo1",1000],
	["robo2",1000],
	["robo3",1000],
	["robo4",1000],
	["robo5",1000],
	["robo6",1000],
	["dinobone",22000],
	["cables",50],
	["tnt",50000],
	["bottles",300],
	["stotagesmall",10000],
	["storagebig",25000],
	["battery",75],
	["ladegeraet",200],
	["hoergeraet",550],
	["nitro",7500],
	["tracker",10000],
	["Kabelbinder",5],
	["lockpick",75],
	["pearl",45000],
	["flashp",850],
	///////////
	["blastingcharge",50000],
	["scrapmetal",400],
	["waffenteile",100],
	["patrone",500],
	["projektil",100],
	["schwapu",100],
	["phull",100],
	["fishingpoles",100],


	["reiniger",60]
];


buy_array = 
[
	["apple",65],
	["rabbit",75],
	["salema",55],
	["ornate",50],
	["mackerel",200],
	["tuna",900],
	["mullet",300],
	["catshark",350],
	["water",10],
	["donuts",120],
	["coffee",10],
	["tbacon",75],
	["lockpick",5000],
	["pickaxe",1200],
	["redgull",1000],
	["fuelF",850],
	["peach",68],
	["spikeStrip",2000],
	["handcuffs",50],
	["axe",650],
	["blastingcharge",35000],
	["boltcutter",7500],
	["defusekit",2500],
	["speedtrap",1500],
	["speedtrapdetector",50000],
	["laptop",150],
	["pole",25],
	["bark",25],
	["licht",25],
	["nitro",17500],
	["tracker",15000],
	["Kabelbinder",500], //für Kopfgeldjäger
	["storagesmall",75000],
	["storagebig",150000],
	["nspray",50],
	["reiniger",90],
	["battery",500],
	["ladegeraet",5000],
	["hoergeraet",2000],
	["schwapul",500],
	["spade",500],
	["hoe",500],


	// Alcohol


	["fishingpoles",350],


 
	["bottles",100]

];
__CONST__(buy_array,buy_array);

life_weapon_shop_array =
[
	["launch_NLAW_F",10],
	["launch_RPG32_F",10],
	["srifle_EBR_F",10],
	["srifle_EBR_ACO_F",10],
	["srifle_EBR_MRCO_pointer_F",10],
	["srifle_EBR_SOS_F",10],
	["srifle_EBR_ARCO_pointer_F",10],
	["srifle_GM6_F",10],
	["srifle_GM6_SOS_F",10],
	["srifle_LRR_F",10],
	["srifle_LRR_SOS_F",10],
	["LMG_Mk200_F",10],
	["LMG_Mk200_MRCO_F",10],
	["LMG_Mk200_pointer_F",10],
	["hgun_P07_F",10],
	["hgun_P07_F",10],
	["hgun_Rook40_F",10],
	["hgun_Rook40_snds_F",10],
	["arifle_Katiba_F",10],
	["arifle_Katiba_C_F",10],
	["arifle_Katiba_GL_F",10],
	["arifle_Katiba_C_ACO_pointer_F",10],
	["arifle_MXC_F",10],
	["arifle_MX_F",10],
	["arifle_MX_GL_F",10],
	["arifle_MX_SW_F",10],
	["arifle_MXM_F",10],
	["arifle_MX_pointer_F",10],
	["arifle_MX_Holo_pointer_F",10],
	["arifle_MX_Hamr_pointer_F",10],
	["arifle_MX_ACO_pointer_F",10],
	["arifle_MX_ACO_F",10],
	["arifle_MX_GL_ACO_F",10],
	["arifle_MX_GL_Hamr_pointer_F",10],
	["arifle_MXC_Holo_F",10],
	["arifle_MXC_Holo_pointer_F",10],
	["arifle_MX_SW_pointer_F",10],
	["arifle_MX_SW_Hamr_pointer_F",10],
	["arifle_MXM_Hamr_pointer_F",10],
	["arifle_SDAR_F",10],
	["arifle_TRG21_F",10],
	["arifle_TRG20_F",10],
	["arifle_TRG21_GL_F",10],
	["arifle_TRG20_Holo_F",10],
	["arifle_TRG20_ACO_pointer_F",10],
	["arifle_TRG20_ACO_Flash",10],
	["arifle_TRG20_ACO_F",10],
	["arifle_TRG21_ACO_pointer_F",10],
	["arifle_TRG21_ARCO_pointer_F",10],
	["arifle_TRG21_GL_ACO_pointer_F",10],
	["arifle_TRG21_GL_ACO_pointer_F",10],
	["launch_B_Titan_F",10],
	["launch_I_Titan_F",10],
	["launch_O_Titan_F",10],
	["launch_Titan_F",10],
	["launch_B_Titan_short_F",10],
	["launch_I_Titan_short_F",10],
	["launch_O_Titan_short_F",10],
	["launch_Titan_short_F",10],
	["srifle_EBR_ARCO_pointer_snds_F",10],
	["LMG_Zafir_F",10],
	["LMG_Zafir_pointer_F",10],
	["hgun_ACPC2_F",10],
	["hgun_ACPC2_snds_F",10],
	["arifle_Mk20_F",10],
	["arifle_Mk20_plain_F",10],
	["arifle_Mk20C_F",10],
	["arifle_Mk20C_plain_F",10],
	["arifle_Mk20_GL_F",10],
	["arifle_Mk20_GL_plain_F",10],
	["arifle_Mk20_ACO_F",10],
	["arifle_Mk20_ACO_pointer_F",10],
	["arifle_Mk20_Holo_F",10],
	["arifle_Mk20_ACO_F",10],
	["arifle_Mk20_ACO_pointer_F",10],
	["arifle_Mk20_MRCO_F",10],
	["arifle_Mk20_MRCO_plain_F",10],
	["arifle_Mk20_MRCO_pointer_F",10],
	["arifle_Mk20_GL_MRCO_pointer_F",10],
	["arifle_Mk20_GL_ACO_F",10],
	["arifle_MXC_ACO_F",10],
	["arifle_MXC_Holo_pointer_snds_F",10],
	["arifle_MXC_SOS_point_snds_F",10],
	["arifle_MXC_ACO_pointer_snds_F",10],
	["arifle_MXC_ACO_pointer_F",10],
	["arifle_MX_ACO_pointer_snds_F",10],
	["arifle_MX_RCO_pointer_snds_F",10],
	["arifle_MX_GL_Holo_pointer_snds_F",10],
	["arifle_MXM_SOS_pointer_F",10],
	["arifle_MXM_RCO_pointer_snds_F",10],
	["SMG_01_F",10],
	["SMG_01_Holo_F",10],
	["SMG_01_Holo_pointer_snds_F",10],
	["SMG_01_ACO_F",10],
	["SMG_02_F",10],
	["SMG_02_ACO_F",10],
	["SMG_02_ARCO_pointg_F",10],
	["srifle_DMR_01_F",10],
	["srifle_DMR_01_ACO_F",10],
	["srifle_DMR_01_MRCO_pointer_F",10],
	["srifle_DMR_01_SOS_F",10],
	["srifle_DMR_01_DMS_F",10],
	["srifle_DMR_01_ARCO_pointer_F",10],
	["srifle_EBR_DMS_F",10],
	["srifle_EBR_Hamr_pointer_F",10],
	["srifle_EBR_DMS_pointer_snds_F",10],
	["hgun_Pistol_heavy_01_F",10],
	["hgun_Pistol_heavy_01_snds_F",10],
	["hgun_Pistol_heavy_01_MRD_F",10],
	["hgun_Pistol_heavy_02_F",10],
	["hgun_Pistol_heavy_02_Yorris_F",10],
	["arifle_MXM_DMS_F",10],
	["srifle_GM6_LRPS_F",10],
	["srifle_LRR_LRPS_F",10],
	["arifle_MXC_Black_F",10],
	["arifle_MX_Black_F",10],
	["arifle_MX_GL_Black_F",10],
	["arifle_MX_SW_Black_F",10],
	["arifle_MXM_Black_F",10],
	["arifle_MX_GL_Black_Hamr_pointer_F",10],
	["arifle_MX_Black_Hamr_pointer_F",10],
	["arifle_MX_SW_Black_Hamr_pointer_F",10],
	["hgun_PDW2000_F",10],
	["hgun_PDW2000_snds_F",10],
	["hgun_PDW2000_Holo_F",10],
	["hgun_PDW2000_Holo_snds_F",10],
	["30Rnd_556x45_Stanag",10],
	["30Rnd_556x45_Stanag_Tracer_Red",10],
	["30Rnd_556x45_Stanag_Tracer_Green",10],
	["30Rnd_556x45_Stanag_Tracer_Yellow",10],
	["30Rnd_65x39_caseless_mag",10],
	["30Rnd_65x39_caseless_green",10],
	["30Rnd_65x39_caseless_mag_Tracer",10],
	["30Rnd_65x39_caseless_green_mag_Tracer",10],
	["20Rnd_556x45_UW_mag",10],
	["20Rnd_762x51_Mag",10],
	["7Rnd_408_Mag",10],
	["5Rnd_127x108_Mag",10],
	["100Rnd_65x39_caseless_mag",10],
	["100Rnd_65x39_caseless_mag_Tracer",10],
	["200Rnd_65x39_cased_Box",10],
	["200Rnd_65x39_cased_Box_Tracer",10],
	["30Rnd_9x21_Mag",10],
	["16Rnd_9x21_Mag",10],
	["RPG32_F",10],
	["RPG32_HE_F",10],
	["NLAW_F",10],
	["1Rnd_HE_Grenade_shell",10],
	["3Rnd_HE_Grenade_shell",10],
	["1Rnd_Smoke_Grenade_shell",10],
	["3Rnd_Smoke_Grenade_shell",10],
	["1Rnd_SmokeRed_Grenade_shell",10],
	["3Rnd_SmokeRed_Grenade_shell",10],
	["1Rnd_SmokeGreen_Grenade_shell",10],
	["3Rnd_SmokeGreen_Grenade_shell",10],
	["1Rnd_SmokeYellow_Grenade_shell",10],
	["3Rnd_SmokeYellow_Grenade_shell",10],
	["1Rnd_SmokePurple_Grenade_shell",10],
	["3Rnd_SmokePurple_Grenade_shell",10],
	["1Rnd_SmokeBlue_Grenade_shell",10],
	["3Rnd_SmokeBlue_Grenade_shell",10],
	["1Rnd_SmokeOrange_Grenade_shell",10],
	["3Rnd_SmokeOrange_Grenade_shell",10],
	["HandGrenade",10],
	["MiniGrenade",10],
	["SmokeShell",10],
	["SmokeShellRed",10],
	["SmokeShellGreen",10],
	["SmokeShellYellow",10],
	["SmokeShellPurple",10],
	["SmokeShellBlue",10],
	["SmokeShellOrange",10],
	["Chemlight_green",10],
	["Chemlight_red",10],
	["Chemlight_yellow",10],
	["Chemlight_blue",10],
	["60Rnd_CMFlareMagazine",10],
	["120Rnd_CMFlareMagazine",10],
	["240Rnd_CMFlareMagazine",10],
	["60Rnd_CMFlare_Chaff_Magazine",10],
	["120Rnd_CMFlare_Chaff_Magazine",10],
	["240Rnd_CMFlare_Chaff_Magazine",10],
	["192Rnd_CMFlare_Chaff_Magazine",10],
	["168Rnd_CMFlare_Chaff_Magazine",10],
	["300Rnd_CMFlare_Chaff_Magazine",10],
	["SmokeLauncherMag",10],
	["SmokeLauncherMag_boat",10],
	["200Rnd_65x39_Belt",10],
	["200Rnd_65x39_Belt_Tracer_Red",10],
	["200Rnd_65x39_Belt_Tracer_Green",10],
	["200Rnd_65x39_Belt_Tracer_Yellow",10],
	["1000Rnd_65x39_Belt",10],
	["1000Rnd_65x39_Belt_Tracer_Red",10],
	["1000Rnd_65x39_Belt_Green",10],
	["1000Rnd_65x39_Belt_Tracer_Green",10],
	["1000Rnd_65x39_Belt_Yellow",10],
	["1000Rnd_65x39_Belt_Tracer_Yellow",10],
	["2000Rnd_65x39_Belt",10],
	["2000Rnd_65x39_Belt_Tracer_Red",10],
	["2000Rnd_65x39_Belt_Green",10],
	["2000Rnd_65x39_Belt_Tracer_Green",10],
	["2000Rnd_65x39_Belt_Yellow",10],
	["2000Rnd_65x39_Belt_Tracer_Yellow",10],
	["5000Rnd_762x51_Belt",10],
	["500Rnd_127x99_mag",10],
	["500Rnd_127x99_mag_Tracer_Red",10],
	["500Rnd_127x99_mag_Tracer_Green",10],
	["500Rnd_127x99_mag_Tracer_Yellow",10],
	["200Rnd_127x99_mag",10],
	["200Rnd_127x99_mag_Tracer_Red",10],
	["200Rnd_127x99_mag_Tracer_Green",10],
	["200Rnd_127x99_mag_Tracer_Yellow",10],
	["100Rnd_127x99_mag",10],
	["100Rnd_127x99_mag_Tracer_Red",10],
	["100Rnd_127x99_mag_Tracer_Green",10],
	["100Rnd_127x99_mag_Tracer_Yellow",10],
	["450Rnd_127x108_Ball",10],
	["150Rnd_127x108_Ball",10],
	["50Rnd_127x108_Ball",10],
	["200Rnd_40mm_G_belt",10],
	["96Rnd_40mm_G_belt",10],
	["64Rnd_40mm_G_belt",10],
	["32Rnd_40mm_G_belt",10],
	["200Rnd_20mm_G_belt",10],
	["40Rnd_20mm_G_belt",10],
	["24Rnd_PG_missiles",10],
	["12Rnd_PG_missiles",10],
	["24Rnd_missiles",10],
	["32Rnd_155mm_Mo_shells",10],
	["8Rnd_82mm_Mo_shells",10],
	["8Rnd_82mm_Mo_Flare_white",10],
	["8Rnd_82mm_Mo_Smoke_white",10],
	["8Rnd_82mm_Mo_guided",10],
	["8Rnd_82mm_Mo_LG",10],
	["6Rnd_155mm_Mo_smoke",10],
	["2Rnd_155mm_Mo_guided",10],
	["2Rnd_155mm_Mo_LG",10],
	["6Rnd_155mm_Mo_mine",10],
	["6Rnd_155mm_Mo_AT_mine",10],
	["2Rnd_155mm_Mo_Cluster",10],
	["UGL_FlareWhite_F",10],
	["3Rnd_UGL_FlareWhite_F",10],
	["UGL_FlareGreen_F",10],
	["3Rnd_UGL_FlareGreen_F",10],
	["UGL_FlareRed_F",10],
	["3Rnd_UGL_FlareRed_F",10],
	["UGL_FlareYellow_F",10],
	["3Rnd_UGL_FlareYellow_F",10],
	["UGL_FlareCIR_F",10],
	["3Rnd_UGL_FlareCIR_F",10],
	["FlareWhite_F",10],
	["FlareGreen_F",10],
	["FlareRed_F",10],
	["FlareYellow_F",10],
	["ATMine_Range_Mag",10],
	["APERSMine_Range_Mag",10],
	["APERSBoundingMine_Range_Mag",10],
	["SLAMDirectionalMine_Wire_Mag",10],
	["APERSTripMine_Wire_Mag",10],
	["ClaymoreDirectionalMine_Remote_Mag",10],
	["SatchelCharge_Remote_Mag",10],
	["DemoCharge_Remote_Mag",10],
	["Laserbatteries",10],
	["30Rnd_45ACP_Mag_SMG_01",10],
	["30Rnd_45ACP_Mag_SMG_01_Tracer_Green",10],
	["9Rnd_45ACP_Mag",10],
	["150Rnd_762x51_Box",10],
	["150Rnd_762x51_Box_Tracer",10],
	["Titan_AA",10],
	["Titan_AP",10],
	["Titan_AT",10],
	["11Rnd_45ACP_Mag",10],
	["6Rnd_45ACP_Cylinder",10],
	["10Rnd_762x51_Mag",10],
	["5Rnd_127x108_APDS_Mag",10],
	["B_IR_Grenade",10],
	["O_IR_Grenade",10],
	["I_IR_Grenade",10],
	["5000Rnd_762x51_Yellow_Belt",10],
	["ItemWatch",0],
	["ItemCompass",0],
	["ItemGPS",0],
	["ItemRadio",0],
	["ItemMap",0],
	["MineDetector",10],
	["Binocular",0],
	["Rangefinder",0],
	["NVGoggles",0],
	["NVGoggles_OPFOR",0],
	["NVGoggles_INDEP",0],
	["FirstAidKit",0],
	["Medikit",0],
	["ToolKit",0],
	["Laserdesignator",10],
	["B_UavTerminal",10],
	["O_UavTerminal",10],
	["I_UavTerminal",10],
	["muzzle_snds_H",10],
	["muzzle_snds_L",10],
	["muzzle_snds_M",10],
	["muzzle_snds_B",10],
	["muzzle_snds_H_MG",10],
	["optic_Arco",10],
	["optic_Hamr",10],
	["optic_Aco",10],
	["optic_ACO_grn",10],
	["optic_Aco_smg",10],
	["optic_ACO_grn_smg",10],
	["optic_Holosight",10],
	["optic_Holosight_smg",10],
	["optic_SOS",10],
	["acc_flashlight",10],
	["acc_pointer_IR",10],
	["optic_MRCO",10],
	["muzzle_snds_acp",10],
	["optic_DMS",10],
	["optic_Yorris",10],
	["optic_MRD",10],
	["optic_LRPS",10],
	["optic_NVS",10],
	["optic_Nightstalker",10],
	["optic_tws",10],
	["optic_tws_mg",10]
];
__CONST__(life_weapon_shop_array,life_weapon_shop_array);

life_garage_prices =
[
	["B_Quadbike_01_F",500],
    ["C_Hatchback_01_F",1750],
    ["C_Offroad_01_F", 1750],
    ["B_G_Offroad_01_F",2000],
	["C_SUV_01_F",2000],
    ["C_Van_01_transport_F",3500],
    ["C_Hatchback_01_sport_F",4000],
	["C_Van_01_fuel_F",8400],
	["I_Heli_Transport_02_F",25000],
	["C_Van_01_box_F",5000],
    ["I_Truck_02_box_F",12500],
    ["B_Truck_01_transport_F",15000],
    ["B_Truck_01_box_F", 17500],
	["I_Truck_02_transport_F",15000],
	["I_Truck_02_covered_F",15000],
	["O_Truck_03_ammo_F",30000],
	["O_MRAP_02_F",15000],
    ["O_Heli_Light_02_unarmed_F",25000],
    ["C_Rubberboat",5000],
    ["C_Boat_Civil_01_F",6500],
    ["C_Boat_Civil_01_police_F",3000],
    ["B_Boat_Armed_01_minigun_F",8750],
    ["I_MRAP_03_F",15000],
    ["I_Heli_light_03_unarmed_F",25000],
	["C_Kart_01_Blu_F",6250],
    ["C_Kart_01_Fuel_F",6250],
    ["C_Kart_01_Red_F",6250],
    ["C_Kart_01_Vrana_F",6250],
    ["O_Truck_03_transport_F",12500],
    ["O_Truck_03_covered_F",15000],
    ["O_Truck_03_repair_F",17500],
	["B_Heli_Light_01_F",35000],
	["B_Boat_Transport_01_F",5000],
	["B_SDV_01_F",5000],
	["B_MRAP_01_F",25000],
	["C_Van_01_Fuel_F",8400],		
	["I_Truck_02_fuel_F",15000],				
	["O_Truck_03_fuel_F",30000], 		
	["B_Truck_01_mover_F",30000], 		
	["B_Truck_01_covered_F",30000], 	
	["B_Truck_01_fuel_F",30000]
];
__CONST__(life_garage_prices,life_garage_prices);

life_garage_sell =
[
	["B_Quadbike_01_F",600],
	["C_Hatchback_01_F",4800],
	["C_Offroad_01_F",3600],
	["B_G_Offroad_01_F",6000],
	["C_SUV_01_F",3000],
	["C_Van_01_transport_F",18000],
	["C_Hatchback_01_sport_F",9400],
	["I_Heli_Transport_02_F",165000],
	["C_Van_01_box_F",6000],
	["I_Truck_02_transport_F",47250],
	["I_Truck_02_covered_F",67250],
	["O_Truck_03_ammo_F",75000],
	["B_Truck_01_transport_F",230000],
	["B_Truck_01_box_F",450000],
	["O_MRAP_02_F",10000],
	["B_Heli_Light_01_F",10000],
	["O_Heli_Light_02_unarmed_F",10000],
	["C_Rubberboat",3000],
	["C_Boat_Civil_01_F",13200],
	["B_Boat_Transport_01_F",1800],
	["C_Boat_Civil_01_police_F",12000],
	["B_Boat_Armed_01_minigun_F",45000],
	["B_SDV_01_F",60000],
	["B_MRAP_01_F",10000],
	["I_MRAP_03_F",10000],
	["C_Van_01_Fuel_F",27000],		
	["I_Truck_02_fuel_F",47250],		
	["O_Truck_03_transport_F",75000],	
	["O_Truck_03_covered_F",125000],	
	["O_Truck_03_fuel_F",245000], 		
	["B_Truck_01_mover_F",10000], 		
	["B_Truck_01_covered_F",310000], 	
	["B_Truck_01_fuel_F",310000],
    ["C_Kart_01_Blu_F",45000], 		
	["C_Kart_01_Fuel_F",45000], 		
	["C_Kart_01_Red_F",45000], 	
	["C_Kart_01_Vrana_F",45000]
];
__CONST__(life_garage_sell,life_garage_sell);