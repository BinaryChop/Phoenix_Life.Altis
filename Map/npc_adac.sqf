adac_1 addAction["ADAC Markt",life_fnc_virt_menu,"adac",0,false,false,"",' playerSide == east'];
adac_1 addAction["ADAC Shop",life_fnc_clothingMenu,"adac",0,false,false,"",' playerSide == east'];
adac_1 addAction["ADAC Zubehoer",life_fnc_weaponShopMenu,"adac_zubehoer",0,false,false,"",' playerSide == east'];

adac_2 addAction["ADAC Fahrzeuge",life_fnc_vehicleShopMenu,["adac_car",east,"adac_car_1","adac","ADAC",0,false,false,"",' playerSide == east']];
adac_2 setVariable["realname", "ADAC Fahrzeug Shop"];
adac_2 addAction["Vehicle Garage",  {   [[getPlayerUID player,playerSide,"Car",player],"TON_fnc_getVehicles",false,false] spawn life_fnc_MP; life_garage_type = "Car",0,false,false,"",' playerSide == east';   createDialog "Life_impound_menu";   disableSerialization;   ctrlSetText[2802,"Fetching Vehicles...."];   life_garage_sp = "adac_g_1";  }];
adac_2 addAction["Store vehicle in Garage",life_fnc_storeVehicle,"",0,false,false,"",'!life_garage_store'];

adac_2 addAction["Helicopter Shop",life_fnc_vehicleShopMenu,["adac_air",east,"adac_car_1","adac","Kavala ADAC",0,false,false,"",' playerSide == east']];
adac_2 addAction["Helicopter Garage",  {   [[getPlayerUID player,playerSide,"Air",player],"TON_fnc_getVehicles",false,false] spawn life_fnc_MP,0,false,false,"",' playerSide == east';     createDialog "Life_impound_menu";   disableSerialization;   ctrlSetText[2802,"Fetching Vehicles...."];   life_garage_sp = "adac_g_1";   life_garage_type = "Air";  },"",0,false,false,"",'playerSide == east '];
adac_2 addAction[format["%1 ($%2)",["license_adac_air"] call life_fnc_varToStr,  [(["adacair"] call life_fnc_licensePrice)]   call life_fnc_numberText],life_fnc_buyLicense,"adacair",0,false,false,"",'!license_adac_air && playerSide == east '];
adac_2s addAction["Store vehicle in Garage",life_fnc_storeVehicle,"",0,false,false,"",'!life_garage_store'];

hulio addAction["Sani Items",life_fnc_virt_menu,"med"];
hulio addAction["Kleidung",life_fnc_clothingMenu,"med"];
hulio addAction["EMS Item Shop",life_fnc_weaponShopMenu,"med_basic"];
hulio addAction["EMS Fahrzeuge ",life_fnc_vehicleShopMenu,["med_shop",independent,"med_car_1","med","Kavala Hosptial"]];
hulio addAction["Fahrzeug Garage",  {   [[getPlayerUID player,playerSide,"Car",player],"TON_fnc_getVehicles",false,false] spawn life_fnc_MP;     createDialog "Life_impound_menu";   disableSerialization;   ctrlSetText[2802,"Fetching Vehicles...."]; life_garage_sp = "med_car_1"; life_garage_type = "Car"; },"",0,false,false,"",'playerSide == independent '];
hulio addAction["Store vehicle in Garage",life_fnc_storeVehicle,"",0,false,false,"",'!life_garage_store'];
hulio addAction[format["%1 ($%2)",["license_med_air"] call life_fnc_varToStr,  [(["mair"] call life_fnc_licensePrice)]   call life_fnc_numberText],life_fnc_buyLicense,"mair",0,false,false,"",'   !license_med_air && playerSide == independent '];


heli_med_1 addAction["Helicopter Shop",life_fnc_vehicleShopMenu,["med_air_hs",independent,"medic_heli_1","med","Kavala Hosptial"]];
heli_med_1 addAction["Helicopter Garage",  {   [[getPlayerUID player,playerSide,"Air",player],"TON_fnc_getVehicles",false,false] spawn life_fnc_MP;     createDialog "Life_impound_menu";   disableSerialization;   ctrlSetText[2802,"Fetching Vehicles...."];   life_garage_sp = "medic_heli_1";   life_garage_type = "Air";  },"",0,false,false,"",'playerSide == independent '];
heli_med_1 addAction["Store vehicle in Garage",life_fnc_storeVehicle,"",0,false,false,"",'!life_garage_store'];

h1_3_4 addAction["Polizeiitems",life_fnc_virt_menu,"cop"];
h1_3_4 addAction["Polizeikleidung",life_fnc_clothingMenu,"cop"];
h1_3_4 addAction["Polizist auf Probe",life_fnc_weaponShopMenu,"cop_new"];
h1_3_4 addAction["Polizist mittleren dienstes",life_fnc_weaponShopMenu,"cop_basic"];
h1_3_4 addAction["Polizist gehobenen dienstes",life_fnc_weaponShopMenu,"cop_heigh"];
h1_3_4 addAction["Teamleader",life_fnc_weaponShopMenu,"cop_sleader"];
h1_3_4 addAction["Ausbilder",life_fnc_weaponShopMenu,"cop_instructor"];
h1_3_4 addAction["SEK",life_fnc_weaponShopMenu,"cop_sek"];
h1_3_4 addAction["SEK Leiter",life_fnc_weaponShopMenu,"cop_sekleader"];
h1_3_4 addAction["Teamchef",life_fnc_weaponShopMenu,"cop_leader"];
h1_3_4 addAction[format["%1 ($%2)",["license_cop_air"] call life_fnc_varToStr,[(["cair"] call life_fnc_licensePrice)] call life_fnc_numberText],life_fnc_buyLicense,"cair",0,false,false,"",' !license_cop_air && playerSide == west '];
h1_3_4 addAction[format["%1 ($%2)",["license_cop_cg"] call life_fnc_varToStr,[(["cg"] call life_fnc_licensePrice)] call life_fnc_numberText],life_fnc_buyLicense,"cg",0,false,false,"",' !license_cop_cg && playerSide == west '];

sek_shop_1 addAction["Polizei Items",life_fnc_virt_menu,"cop"];
sek_shop_1 addAction["Polizeikleidung",life_fnc_clothingMenu,"cop"];
sek_shop_1 addAction["Polizist auf Probe",life_fnc_weaponShopMenu,"cop_new"];
sek_shop_1 addAction["Polizist mittleren dienstes",life_fnc_weaponShopMenu,"cop_basic"];
sek_shop_1 addAction["Polizist gehobenen dienstes",life_fnc_weaponShopMenu,"cop_heigh"];
sek_shop_1 addAction["Teamleader",life_fnc_weaponShopMenu,"cop_sleader"];
sek_shop_1 addAction["Ausbilder",life_fnc_weaponShopMenu,"cop_instructor"];
sek_shop_1 addAction["SEK",life_fnc_weaponShopMenu,"cop_sek"];
sek_shop_1 addAction["SEK Leiter",life_fnc_weaponShopMenu,"cop_sekleader"];
sek_shop_1 addAction["Teamchef",life_fnc_weaponShopMenu,"cop_leader"];
sek_shop_1 addAction[format["%1 ($%2)",["license_cop_air"] call life_fnc_varToStr,[(["cair"] call life_fnc_licensePrice)] call life_fnc_numberText],life_fnc_buyLicense,"cair",0,false,false,"",' !license_cop_air && playerSide == west '];

sek_shop_1_1 addAction["Polizei Items",life_fnc_virt_menu,"cop"];
sek_shop_1_1 addAction["Polizeikleidung",life_fnc_clothingMenu,"cop"];
sek_shop_1_1 addAction["Polizist auf Probe",life_fnc_weaponShopMenu,"cop_new"];
sek_shop_1_1 addAction["Polizist mittleren dienstes",life_fnc_weaponShopMenu,"cop_basic"];
sek_shop_1_1 addAction["Polizist gehobenen dienstes",life_fnc_weaponShopMenu,"cop_heigh"];
sek_shop_1_1 addAction["Teamleader",life_fnc_weaponShopMenu,"cop_sleader"];
sek_shop_1_1 addAction["Ausbilder",life_fnc_weaponShopMenu,"cop_instructor"];
sek_shop_1_1 addAction["SEK",life_fnc_weaponShopMenu,"cop_sek"];
sek_shop_1_1 addAction["SEK Leiter",life_fnc_weaponShopMenu,"cop_sekleader"];
sek_shop_1_1 addAction["Teamchef",life_fnc_weaponShopMenu,"cop_leader"];
sek_shop_1_1 addAction[format["%1 ($%2)",["license_cop_air"] call life_fnc_varToStr,[(["cair"] call life_fnc_licensePrice)] call life_fnc_numberText],life_fnc_buyLicense,"cair",0,false,false,"",' !license_cop_air && playerSide == west '];

h1_3_1_1 addAction["Polizei Items",life_fnc_virt_menu,"cop"];
h1_3_1_1 addAction["Polizeikleidung",life_fnc_clothingMenu,"cop"];
h1_3_1_1 addAction["Polizist auf Probe",life_fnc_weaponShopMenu,"cop_new"];
h1_3_1_1 addAction["Polizist mittleren dienstes",life_fnc_weaponShopMenu,"cop_basic"];
h1_3_1_1 addAction["Polizist gehobenen dienstes",life_fnc_weaponShopMenu,"cop_heigh"];
h1_3_1_1 addAction["Teamleader",life_fnc_weaponShopMenu,"cop_sleader"];
h1_3_1_1 addAction["Ausbilder",life_fnc_weaponShopMenu,"cop_instructor"];
h1_3_1_1 addAction["SEK",life_fnc_weaponShopMenu,"cop_sek"];
h1_3_1_1 addAction["SEK Leiter",life_fnc_weaponShopMenu,"cop_sekleader"];
h1_3_1_1 addAction["Teamchef",life_fnc_weaponShopMenu,"cop_leader"];
h1_3_1_1 addAction[format["%1 ($%2)",["license_cop_air"] call life_fnc_varToStr,[(["cair"] call life_fnc_licensePrice)] call life_fnc_numberText],life_fnc_buyLicense,"cair",0,false,false,"",' !license_cop_air && playerSide == west '];

h1_3_3_1_1 addAction["Polizei Items",life_fnc_virt_menu,"cop"];
h1_3_3_1_1 addAction["Polizeikleidung",life_fnc_clothingMenu,"cop"];
h1_3_3_1_1 addAction["Polizist auf Probe",life_fnc_weaponShopMenu,"cop_new"];
h1_3_3_1_1 addAction["Polizist mittleren dienstes",life_fnc_weaponShopMenu,"cop_basic"];
h1_3_3_1_1 addAction["Polizist gehobenen dienstes",life_fnc_weaponShopMenu,"cop_heigh"];
h1_3_3_1_1 addAction["Teamleader",life_fnc_weaponShopMenu,"cop_sleader"];
h1_3_3_1_1 addAction["Ausbilder",life_fnc_weaponShopMenu,"cop_instructor"];
h1_3_3_1_1 addAction["SEK",life_fnc_weaponShopMenu,"cop_sek"];
h1_3_3_1_1 addAction["SEK Leiter",life_fnc_weaponShopMenu,"cop_sekleader"];
h1_3_3_1_1 addAction["Teamchef",life_fnc_weaponShopMenu,"cop_leader"];
h1_3_3_1_1 addAction[format["%1 ($%2)",["license_cop_air"] call life_fnc_varToStr,[(["cair"] call life_fnc_licensePrice)] call life_fnc_numberText],life_fnc_buyLicense,"cair",0,false,false,"",' !license_cop_air && playerSide == west '];

