class Socket_Reciever
{
	tag = "SOCK";
	class SQL_Socket
	{
		file = "core\session";
		class requestReceived {};
		class dataQuery {};
		class insertPlayerInfo {};
		class updateRequest {};
		class syncData {};
		class updatePartial {};
	};
};


class Life_Client_Core
{
	tag = "life";
	
	class Master_Directory
	{
		file = "core";
		class setupActions {};
		class setupEVH {};
		class initCiv {};
		class initCop {};
		class initMedic {};
        class initAdac {};
	};
	
	class Admin
	{
		file = "core\admin";
		class admininfo {};
		class adminid {};
		class admingetID {};
		class adminMenu {};
		class adminQuery {};
		class adminSpectate {};
		class adminDebugCon {};
		class adminFreeze {};
		class adminMarkers {};
		class adminRepairBuild {};
	};
	
	class Medical_System
	{
		file = "core\medical";
		class onPlayerKilled {};
		class onPlayerRespawn {};
		class respawned {};
		class revivePlayer {};
		class revived {};
		class medicMarkers {};
		class requestMedic {};
		class medicRequest {};
		class deathScreen {};
		class medicLoadout {};
		class medicSirenLights {};
		class medicLights {};
		class medicSiren {};
		class equipGear {};
	};
	
	class Actions
	{
		file = "core\actions";
		class buyLicense {};
		class chemlightUse {};
		class healHospital {};
		class pushVehicle {};
		class repairTruck {};
		class serviceChopper {};
		class catchFish {};
		class catchTurtle {};
		class dpFinish {};
		class dropFishingNet {};
		class getDPMission {};
		class postBail {};
		class processAction {};
		class processAction2 {};
		class arrestAction {};
		class escortAction {};
		class impoundAction {};
		class pulloutAction {};
		class putInCar {};
		class stopEscorting {};
		class restrainAction {};
		class searchAction {};
		class searchVehAction {};
		class unrestrain {};
		class pickupItem {};
		class pickupMoney {};
		class ticketAction {};
		class packupSpikes {};
		class storeVehicle {};
		class robAction {};
		class captureHideout {};
		class robShops {};
		class robShops2 {};
		class shopState {};
		class boostNitro {};    //Nos
		class packuppole {};   //Lichtkegel
		class packuplicht {}; //Scheinwerfer
		class packupbark {}; //Starßensperre
		class surrender{}; //Aufgeben
		class craftAction {}; //crafting
	};
	
	class Housing
	{
		file = "core\housing";
		class buyHouse {};
		class getBuildingPositions {};
		class houseMenu {};
		class lightHouse {};
		class lightHouseAction {};
		class sellHouse {};
		class initHouses {};
		class copBreakDoor {};
		class raidHouse {};
		class lockupHouse {};
		class copHouseOwner {};
		class lockHouse {};
	};
	
	class Config
	{
		file = "core\config";
		class licensePrice {};
		class vehicleColorCfg {};
		class vehicleColorStr {};
		class vehicleListCfg {};
		class licenseType {};
		class eatFood {};
		class varHandle {};
		class varToStr {};
		class impoundPrice {};
		class itemWeight {};
		class taxRate {};
		class virt_shops {};
		class vehShopLicenses {};
		class vehicleAnimate {};
		class weaponShopCfg {};
		class vehicleWeightCfg {};
		class seizeCfg {};
		class houseConfig {};
		class updateClothing {};
		class fuelTruckCfg {};
		class adacDefault {};
		class craftCfg {};

		//Clothing Store Configs
		class clothing_cop {};    //Polizeishop
		class clothing_bruce {};  //Modeshop
		class clothing_reb {};    //Rebellenshop
		class clothing_dive {};   //Tauchershop
		class clothing_kart {};   //Kartshop
		class clothing_ems {};    //Notarztshop
		class clothing_adac {};   //Adacshop
	};

	class Player_Menu
	{
		file = "core\pmenu";
		class wantedList {};
		class wantedInfo {};
		class wantedMenu {};
		class pardon {};
		class giveItem {};
		class giveMoney {};
		class p_openMenu {};
		class p_updateMenu {};
		class removeItem {};
		class useItem {};
		class cellphone {};
		class keyMenu {};
		class keyGive {};
		class keyDrop {};
		class s_onSliderChange {};
		class updateViewDistance {};
		class settingsMenu {};
		class settingsInit {};
		class wantedadd2 {};
		class wanted2 {};
		class smartphone{};
		class newMsg{};
		class showMsg{};
		class craft {};
		class craft_update {};
		class craft_updateFilter {};
		class revokeLicense {};
	};
	
	class Functions
	{
		file = "core\functions";
		class calWeightDiff {};
		class durchsage1 {};
		class durchsage2 {};
		class marker_on_map {};
		class getOut {};
		class getIn {};
		class fetchCfgDetails {};
		class handleInv {};
		class hudSetup {};
		class hudUpdate {};
		class tazeSound {};
		class animSync {};
		class simDisable {};
		class keyHandler {};
		class dropItems {};
		class handleDamage {};
		class numberText {};
		class handleItem {};
		class accType {};
		class receiveItem {};
		class giveDiff {};
		class receiveMoney {};
		class playerTags {};
		class clearVehicleAmmo {};
		class pullOutVeh {};
		class unLockCarSound {};
		class lockCarSound {};
		class nearUnits {};
		class actionKeyHandler {};
		class playerCount {};
		class fetchDeadGear {};
		class loadDeadGear {};
		class isnumeric {};
		class escInterupt {};
		class onTakeItem {};
		class fetchVehInfo {};
		class pushObject {};
		class onFired {};
		class revealObjects {};
		class nearestDoor {};
		class inventoryClosed {};
		class inventoryOpened {};
		class isUIDActive {};
		class saveGear {};
		class loadGear {};
		class stripDownPlayer {};
		class autoSave {};
		class randomRound {};
		class setUniform {};
		class fadeSound {};
		class emptyFuelCargo {};
		class isFuelTruck {};
	};
	
	class Network
	{
		file = "core\functions\network";
		class broadcast {};
		class MP {};
		class MPexec {};
		class netSetVar {};
		class corpse {};
		class jumpFnc {};
		class soundDevice {};
		class setFuel {};
		class setTexture {};
		class say3D {};
	};
	
	class Civilian
	{
		file = "core\civilian";
		class freezePlayer {};
		class jailMe {};
		class jail {};
		class tazed {};
		class knockedOut {};
		class knockoutAction {};
		class robReceive {};
		class robPerson {};
		class removeLicenses {};
		class demoChargeTimer {};
		class civLoadout {};
		class civInteractionMenu {}; //Kabelbinder
	};
	class Adac
	{
		file = "core\adac";
		class adacloadGear {};
		class adacsaveGear {};
		class adacMarkers {};
	};
	
	class Vehicle
	{
		file = "core\vehicle";
		class colorVehicle {};
		class openInventory {};
		class lockVehicle {};
		class vehicleOwners {};
		class vehStoreItem {};
		class vehTakeItem {};
		class vehInventory {};
		class vInteractionMenu {};
		class vehicleWeight {};
		class deviceMine {};
		class devicePump {};
		class addVehicle2Chain {};
		class updateVehTrunk {};
	};
	
	class Cop
	{
		file = "core\cop";
		class copMarkers {};
		class copLights {};
		class vehInvSearch {};
		class copSearch {};
		class bountyReceive {};
		class searchClient {};
		class restrain {};
		class ticketGive {};
		class ticketPay {};
		class ticketPrompt {};
		class copSiren {};
		class copOpener {};			//Schranke Öffen
		class spikeStripEffect {};
		class radar {};
		class questionDealer {};
		class copInteractionMenu {};
		class sirenLights {};
		class licenseCheck {};
		class licensesRead {};
		class showArrestDialog {}; 
		class arrestDialog_Arrest {};
		class repairDoor {};
		class doorAnimate {};
		class fedCamDisplay {};
		class copLoadout {};
		class copShowLicense {};
		class copLicenseShown {};
		class seizePlayerWeapon {};
		class seizeObjects {};
		class seizePlayerWeaponAction {};
		class breathalyzer {};
	};
	
	class Gangs
	{
		file = "core\gangs";
		class initGang {};
		class createGang {};
		class gangCreated {};
		class gangMenu {};
		class gangKick {};
		class gangLeave {};
		class gangNewLeader {};
		class gangUpgrade {};
		class gangInvitePlayer {};
		class gangInvite {};
		class gangDisband {};
		class gangDisbanded {};
	};
	
	class Shops
	{
		file = "core\shops";
		class atmMenu {};
		class buyClothes {};
		class changeClothes {};
		class clothingMenu {};
		class clothingFilter {};
		class vehicleShopMenu {};
		class vehicleShopLBChange {};
		class vehicleShopBuy {};
		class weaponShopFilter {};
		class weaponShopMenu {};
		class weaponShopSelection {};
		class weaponShopBuySell {};
		class virt_buy {};
		class virt_menu {};
		class virt_update {};
		class virt_sell {};
		class chopShopMenu {};
		class chopShopSelection {};
		class chopShopSell {};
		class addsubstract {};
	};
	
	class Items
	{
		file = "core\items";		
		class lockpick {};
		class spikeStrip {};
		class jerryRefuel {};
		class flashbang {};
		class boltcutter {};
		class blastingCharge {};
		class defuseKit {};
		class storageBox {};
		class nos {};        //Nitro
		class pole {};      //Lichtkegel
		class bark {}; 	    //Straßensperre
		class licht {}; 	//Scheinwerfer
		class ladegeraet {};
		class hoergeraet {};
		class drinkbeer {};
		class drinkmoonshine {};
		class drinkwhiskey {};
	};
	class Gather
	{
		file = "core\Gather";
		class pickaxeUse {};
		class pickaxeUse2 {};
		class pickaxeUse3 {};
		class pickaxesUse {};
		class pickaxesUse2 {};
		class axeUse {};
		class axetUse {};
		class gather {};
		class gather1 {};
		class gather2 {};
		class gather3 {};
		class spadeUse {};
	};
	class anstrich
	{
		file = "core\repaint";
		
		class RepaintMenu;
		class Repaintcolor;
		class RepaintVehicle;		
	};
	
class DynMarket
    {
        file = "core\addons\DynMarket";
        class bought {};
        class update {};
        class DisplayPrices {};
        class LoadIntoListbox {};
        class ForcePrice {};
        class DYNMARKET_getPrice {};
    };
	
	class Dialog_Controls
	{
		file = "dialog\function";
		class setMapPosition {};
		class displayHandler {};
		class spawnConfirm {};
		class spawnMenu {};
		class spawnPointCfg {};
		class spawnPointSelected {};
		class progressBar {};
		class impoundMenu {};
		class unimpound {};
		class sellGarage {};
		class bankDeposit {};
		class bankWithdraw {};
		class bankTransfer {};
		class garageLBChange {};
		class safeInventory {};
		class safeOpen {};
		class safeTake {};
		class safeFix {};
		class vehicleGarage {};
		class gangDeposit {};
		class gangWithdraw {};
	};
};	
	//some king stuff
class King_Client_Core
  {
   tag = "king";
		
	class Speedtrap
	{
		file = "core\addons\king\speedtrap";
		class speedtrap {};
		class speedtrapGetPhotoList {};
        class speedtrapActivate {};
        class speedtrapSetSpeedLimit {};
        class speedtrapRemove {};
        class speedtrapAdd {};
        class trapped {};
        class trappedFlash {};
        class setSpeedtrapLimit {};
        class speedtrapHack {};
	};
	
	class Fuelchanger
	{
		file = "core\addons\king\fuelchanger";
        class fuelchanger {};
        class fuelchangerManipulate {};
        class useFuelStation {};
        class cleanFuelStation {};
		class fuelPipe {};
	};

};