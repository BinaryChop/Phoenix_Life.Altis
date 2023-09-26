/*
	File: fn_varToStr.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Takes the long-name (variable) and returns a display name for our
	virtual item.
*/
private["_var"];
_var = [_this,0,"",[""]] call BIS_fnc_param;
if(_var == "") exitWith {""};

switch (_var) do
{

//// ITEMS PURE 
	
	case "life_inv_tbacon": {"Tac. Bacon"};
	case "life_inv_rabbit": {"Hasenfleisch"};
	
	case "life_inv_donuts": {"Donut"};
	case "life_inv_redgull": {"Redgull"};
	case "life_inv_water": {"Wasser"};
	case "life_inv_coffee": {"Seatle Latte"};
	case "life_inv_shoki": {"Schokolade"};
	case "life_inv_luckycookie": {"Glueckskeks"};
	
	case "life_inv_bppickaxet": {"Presslufthammer"};
	case "life_inv_pickaxet": {"Picke"};
	case "life_inv_bpaxet": {"Kettensaege"};
	
	case "life_inv_axe": {"Axt"};
	case "life_inv_spade": {"Spaten"};
	case "life_inv_hoe": {"Sichel"};
	
	case "life_inv_handcuffs": {"Handschellen"};
	case "life_inv_speedtrap": {"Radarfalle"};
	case "life_inv_speedtrapdetector": {"Radarfalle Tool"};
	case "life_inv_bark": {"Absperrung"};
	case "life_inv_licht": {"Flutlicht"};
	case "life_inv_laptop": {"Notebook"};
	case "life_inv_pole": {"Poller"};
	case "life_inv_defusekit": {"EOD Kit"};
	case "life_inv_spikeStrip": {"Kraehenfueﬂe"};
	
	case "life_inv_nspray": {"Nasenspray"};
	case "life_inv_reniger": {"Reiniger"};
	
	case "life_inv_lwatch": {"Uhr"};
	case "life_inv_woodleg": {"Holzbein"};
	case "life_inv_lighter": {"Feuerzeug"};
	case "life_inv_calc": {"Taschenrechner"};
	case "life_inv_robo": {"Roboter"};
	case "life_inv_robo1": {"Roboteil 1"};
	case "life_inv_robo2": {"Roboteil 2"};
	case "life_inv_robo3": {"Roboteil 3"};
	case "life_inv_robo4": {"Roboteil 4"};
	case "life_inv_robo5": {"Roboteil 5"};
	case "life_inv_robo6": {"Roboteil 6"};
	case "life_inv_dinobone": {"Dinoknochen"};
	case "life_inv_cables": {"Kabel"};
	case "life_inv_tnt": {"TNT"};
	case "life_inv_bottles": {"Flasche"};
	
	case "life_inv_stotagesmall": {"kleine Kiste"};
	case "life_inv_storagebig": {"grosse Kiste "};
	case "life_inv_battery": {"Batterie"};
	case "life_inv_ladegeraet": {"Ladegeraet"};
	case "life_inv_hoergeraet": {"Hoergeraet"};
	
	case "life_inv_nitro": {"NOS"};
	case "life_inv_tracker": {"GPS Tracker"};
	case "life_inv_Kabelbinder": {"Kabelbinder"};
	case "life_inv_lockpick": {"Dietrich"};	
	case "life_inv_pearl": {"Perle"};
	
	case "life_inv_blastingcharge": {"Semtex"};
	case "life_inv_boltcutter": {"Bolzenschneider"};
	
	case "life_inv_scrapmetal": {"Schrott"};
	case "life_inv_waffenteile": {"Waffenteile"};
	case "life_inv_patrone": {"Patrone"};
	case "life_inv_projektil": {"Projektil"};
	case "life_inv_schwapu": {"Treibladung"};
	case "life_inv_phull": {"Phull"};
	
	case "life_inv_fishingpoles": {"Angel"};

/// ITEMS RAW

	case "life_inv_saphiru": {"Roh Saphir"};
	case "life_inv_diamond": {"Roh Diamant"};
	case "life_inv_salt": {"Roh Salz"};
	case "life_inv_sand": {"Sand"};
	case "life_inv_ironore": {"Eisenerz"};
	case "life_inv_copperore": {"Kupfererz"};
	case "life_inv_goldore": {"Golderz"};
	case "life_inv_titanore": {"Titanerz"};
	case "life_inv_ironr": {"Stahl"};
	case "life_inv_rock": {"Stein"};
	case "life_inv_oilu": {"Rohoel"};
	case "life_inv_coalu": {"Kohle unrein"};
	case "life_inv_glass": {"Glass"};
	
	case "life_inv_holz": {"Baumstamm"};
	
	case "life_inv_uranu": {"Uranerz"};
	
	case "life_inv_pear": {"Birne"};
	case "life_inv_apple": {"Apfel"};
	case "life_inv_peach": {"Pfirsich"};
	case "life_inv_grape": {"Traube"};
	
	case "life_inv_wheat": {"Weizen"};
	case "life_inv_rye": {"Roggen"};
	case "life_inv_hops": {"Hopfen"};
	case "life_inv_cornmeal": {"Maismehl"};
	case "life_inv_yeast": {"Hefe"};
	case "life_inv_mash": {"Maische"};
	case "life_inv_mehl": {"Mehl"};
	
	case "life_inv_turtlesoup": {"Schildkroetensuppe"};
	case "life_inv_muschu": {"Rohe Muschel"};
	case "life_inv_salema": {"Salema"};
	case "life_inv_ornate": {"Ornate"};
	case "life_inv_mackerel": {"Makrele"};
	case "life_inv_tuna": {"Tunfisch"};
	case "life_inv_mullet": {"Meeraesche"};
	case "life_inv_catshark": {"Katzenhai"};
	case "life_inv_clam": {"Miesmuschel"};
	case "life_inv_crab": {"Krabbe"};
	
	case "life_inv_mohn": {"Mohn"};
	case "life_inv_cannabis": {"Cannabis"};
	case "life_inv_cannabis": {"Cannabis "};
	case "life_inv_cocaine": {"Coca "};
	case "life_inv_lsdu": {"Mutterkorn"};
	case "life_inv_methu": {"Meertraeubel"};
	case "life_inv_mohn": {"Mohn"};
	
	case "life_inv_moonshine": {"Schnaps"};
	case "life_inv_beer": {"Bier"};
	case "life_inv_whiskey": {"Whiskey"};
	
	case "life_inv_wool": {"Wolle"};
	case "life_inv_stoff": {"Stoff"};
	
	case "life_inv_flashu": {"dreckige Flasche"};


//// Processed Items 

	case "life_inv_saphirc": {"Saphir"};
	case "life_inv_diamondc": {"Diamant"};
	case "life_inv_saltr": {"Salz"};
	case "life_inv_glass": {"Glass"};
	case "life_inv_ironr": {"Eisen"};
	case "life_inv_copperr": {"Kupfer"};
	case "life_inv_goldr": {"Gold"};
	case "life_inv_titanr": {"Titan"};
	case "life_inv_steel": {"Stahl"};
	case "life_inv_cement": {"Zement"};
	case "life_inv_oilp": {"Oel"};
	case "life_inv_coalr": {"Kohle"};
	case "life_inv_flashp": {"Flasche"};
	
	case "life_inv_planke": {"Planke"};
	
	case "life_inv_uranp": {"Uran"};
	
	case "life_inv_grapep": {"Edeltraube"};
	
	case "life_inv_mehl": {"Mehl"};
	
	case "life_inv_brot": {"Brot"};
	
	case "life_inv_muschp": {"Muschel"};
	
	case "life_inv_krabbenburger": {"Krabbenburger"};
	
	case "life_inv_heroinp": {"Heroin"};
	case "life_inv_marijuana": {"Marijuana"};
	case "life_inv_marijuana1": {"MED Marijuna"};
	case "life_inv_cocainep": {"Kokain"};
	case "life_inv_lsdp": {"LSD"};
	case "life_inv_methp": {"Meth"};
	case "life_inv_krokp": {"Desomorphin"};
	
	case "life_inv_bottledshine": {"Flasche Schnaps"};
	case "life_inv_bottledbeer": {"Flasche Bier"};
	case "life_inv_bottledwhiskey": {"Flasche Whiskey"};
	
	case "life_inv_bottledwine": {"Flasche Wein"};
	
	case "life_inv_benzin": {"benzin"};
	case "life_inv_plastic": {"Kunststoff"};
	case "life_inv_fuelF": {"Kannister Voll"};
	case "life_inv_fuelE": {"Kannister Leer"};
	
	case "life_inv_flashp": {"saubere Flasche"};


	
//////// Lizenzen:


	case "license_adac_air": {"ADAC Fluglizenz"};     //ADAC
	case "license_med_adac": {"ADAC Lizenz"};

	
	case "license_civ_saphir": {"Saphirschleifer"};
	case "license_civ_diamond": {"Diamantenschleifer"};
	case "license_civ_salt": {"Salzveredelung"};
	case "license_civ_sand": {"Sandverwertung"};
	case "license_civ_iron": {"Eisenveredelung"};
	case "license_civ_copper": {"Kupferveredelung"};
	case "license_civ_gold": {"Goldveredelung"};
	case "license_civ_titan": {"Titanveredelung"};
	case "license_civ_stahl": {"Stahlschmied"};
	case "license_civ_cement": {"Zementproduktion"};
	case "license_civ_oil": {"Oelverwertung"};
	case "license_civ_coal": {"Kohleveredelung"};
	case "license_civ_lowin": {"LOWIN"};
	case "license_civ_midin": {"MIDIN"};
	case "license_civ_highin": {"HIGHIN"};
	case "license_civ_geo1": {"GEO1"};
	case "license_civ_geo2": {"GEO2"};
	case "license_civ_geo3": {"GEO3"};
	case "license_civ_timber": {"Holzverarbeitung"};
	
	case "license_civ_Uran": {"Uranverarbeitung"};
	case "license_civ_Uran1": {"URA"};
	case "license_civ_Uran2": {"URA2"};
	case "license_civ_Uran3 ": {"URA3"};
	case "license_civ_Uran4": {"URA4"};
	case "license_civ_puranium": {"PURANI"};
	case "license_civ_ipuranium": {"IPURANI"};
	
	case "license_civ_mash": {"Maischeproduzent"};
	case "license_civ_backery": {"Baeckerei"};
	
	case "license_civ_food 1": {"FOOD1"};
	case "license_civ_food 2": {"FOOD2"};
	case "license_civ_food 3": {"FOOD3"};
	
	case "license_civ_heroin": {"Heroinveredeler"};
	case "license_civ_marijuana": {"Cannabisveredeler"};
	case "license_civ_medmarijuana": {"Med Cannabis"};
	case "license_civ_cocaine": {"Cocaveredeler"};
	case "license_civ_lsd": {"LSD Gewinnung"};
	case "license_civ_meth": {"Meth Gewinnung"};
	case "license_civ_krok": {"Krok Gewinnung"};
	case "license_civ_drug1": {"DRUG1"};
	case "license_civ_drug2": {"DRUG2"};
	case "license_civ_drug3": {"DRUG3"};
	
	case "license_civ_stiller": {"Destilation"};
	case "license_civ_bottler": {"Abfueller"};
	case "license_civ_liquor": {"Alkoholhandel"};
	
	case "license_civ_chem1": {"CHEM1"};
	case "license_civ_chem2": {"CHEM2"};
	case "license_civ_chem3": {"CHEM3"};
	
	case "license_civ_build": {"BUILD"};
	
	case "license_civ_schmuck1": {"SCHMUCK1"};
	case "license_civ_schmuck2": {"SCHMUCK2"};
	
	case "license_civ_edel1": {"EDEL1"};
	case "license_civ_edel2": {"EDEL2"};
	
	case "license_civ_addinv": {"ADDINV"};
	
	case "license_civ_skill": {"SKILL"};
	
	case "license_civ_wp": {"Waffenproduktion"};
	
	case "license_civ_cair": {"Flugschein"};
	case "license_cop_swat": {"SEK Ausbildung"};
	case "license_cop_cg": {"Kuestenwache"};
	case "license_civ_driver": {"Fuehrerschein B"};
	case "license_civ_pilot": {"Flugschein"};
	case "license_civ_gang": {"Gang"};
	case "license_civ_boat": {"Bootschein"};
	case "license_civ_dive": {"Taucherausbildung"};
	case "license_civ_truck": {"Fueherschein C"};
	case "license_civ_gun": {"Waffenschein"};
	case "license_civ_rebel": {"Rebellenstatus"};
	case "license_med_air": {"Sanitaeterflugschein"};
	case "license_civ_home": {"Eigenheim"};
	case "license_civ_vmg": {"VMG"};
	case "license_cop_kopf": {"Kopfgeldjaeger"};


	case "license_civ_uranium": {"Uran Lizenz"}



};


