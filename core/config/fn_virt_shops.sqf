/*
	File: fn_virt_shops.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Config for virtual shops.
*/
private["_shop"];
_shop = _this select 0;

switch (_shop) do
{
	case "market": {["Altis Markt",["water","brot","grape","wool","rabbit","apple","pear","Birnen","redgull","tbacon","clam","crab","cornmeal","bottles","ladegeraet","battery","hoergeraet","lockpick","pickaxe","axe","spade","hoe","fuelF","peach","boltcutter","storagesmall","storagebig","pearl","reiniger","nspray","shoki","luckycookie","robo","bppickaxet","bpaxet","dinobone","krabbenburger"]]};
	case "remarket": {["Recycling Markt",["hoergeraet","pickaxe","axe","spade","pickaxet","axet","fuelE","boltcutter","storagesmall","storagebig","lwatch","woodleg","robo1","robo2","robo3","robo4","robo5","robo6","robo","bppickaxet","bpaxet","cables","dinobone"]]};
	case "rebel": {["Rebellen Markt",["Kabelbinder","water","rabbit","apple","redgull","spade","tbacon","lockpick","pickaxe","fuelF","peach","boltcutter"]]};
	case "gang": {["Gang Markt", ["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","boltcutter","blastingcharge"]]};
	case "wongs": {["Wong's Food Cart",["turtlesoup","turtle","moonshine"]]};
	case "coffee": {["Altis Coffee Club",["coffee","donuts"]]};
	case "heroin": {["Drogen Dealer",["cocainp","cokep1","cokep2","cokep3","heroinp","heroinp1","heroinp2","heroinp3","methp","methp1","methp2","methp3","lsdp","lsdp1","lsdp2","lsdp3","marijuana","marijuana1","marijuana2","marijuana3","cocainep","heroinp","marijuana","methp","krokp"]]};
	case "oil": {["Oil Trader",["oilp","fuelF"]]};
	case "fishmarket": {["Altis Fish Market",["salema","ornate","mackerel","mullet","tuna","catshark","muschp"]]};
	case "glass": {["Altis Glass Dealer",["sand","glass"]]};
	case "iron": {["Altis Industrie Händler",["iron_r","ironore","copper_r","copperore","gold","goldore","titan","titanore","coal"]]};
	case "diamond": {["Juwelier",["diamondr","safirp","diamond","safiru","diamondc"]]};
	case "salt": {["Salt Dealer",["salt_r"]]};
	case "cop": {["Cop Item Shop",["handcuffs","donuts","coffee","spikeStrip","bark","licht","water","rabbit","apple","redgull","fuelF","pole","speedtrap","laptop","defusekit"]]};
	case "gas": {["Supermarkt",["water","redgull","tbacon","fuelF","pickaxe","axt","benzin"]]};
	case "med": {["Sani/Medic",["water","redgull","tbacon","fuelF","battery","ladegeraet","hoergeraet","bark","licht","pole"]]};
	case "cement": {["Zement Händler",["cement"]]};
	case "gold": {["Gold Haendler",["goldbar"]]};
	case "blackmarket": {["Schwarzmarkt",["uranp","tnt","schwapul","waffenteile","patrone","projektil","phull"]]};
	case "tuning": {["Tuningshop",["nitro","tracker","speedtrapdetector"]]};
	case "moebelladen": {["Moebelhaus",["planke"]]};
	case "adac": {["ADAC Markt", ["fuelF","water","redgull","rabbit","apple","tbacon","peach"]]};
	case "saft": {["Getraenke Markt", ["traup","flaschp"]]};
	case "kopf": {["AKJ Item Shop",["handcuffs","donuts","coffee","spikeStrip","water","rabbit","apple","redgull","fuelF"]]};
	case "medic": {["Arztbedarf",["apple","donuts","coffee","battery","redgull","fuelF"]]};
	case "speakeasy": {["Speakeasy's",["bottledbeer","bottledwhiskey","bottledshine"]]};
	case "bar": {["The Lounge",["bottles","cornmeal"]]};
	case "uranium": {["Marchand Uranium",["uranium","puranium"]]};
// Sealdrop
	case "beer": {["Schnaps Laden",["wine"]]};
	case "pharmacy": {["Apotheke",["painkillers","morphium","scalpel","kidney"]]};

	// case "market2": {["Test", ["traup","titan","iron_r","copper_r","oilp","flaschp","planke","Birnen","uranp","turtle","glass","diamondc","salt_r","cement","boltcutter","storagesmall","storagebig","cocainep","heroinp","methp","lsdp","marijuana"]]};
};