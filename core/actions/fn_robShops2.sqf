/*         
            file: fn_robShops.sqf
            Author: MrKraken
            Made from MrKrakens bare-bones shop robbing tutorial on www.altisliferpg.com forums
            Description:
            Executes the rob shob action!
            Idea developed by PEpwnzya v2.0
            
*/ 
private["_robber","_shop","_kassa","_ui","_progress","_pgText","_cP","_rip"];
_shop = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param; //The object that has the action attached to it is _this. ,0, is the index of object, ObjNull is the default should there be nothing in the parameter or it's broken
_robber = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param; //Can you guess? Alright, it's the player, or the "caller". The object is 0, the person activating the object is 1
_action = [_this,2] call BIS_fnc_param;//Action name

if !(alive _robber) exitWith {};

_rip = true;
_kassa = 3000 + round(random 16000); //setting the money in the registry, anywhere from 3000 to 15000. 
[[_shop,_robber,_action,-1],"TON_fnc_shopState",false,false] spawn life_fnc_MP; //sending information to the server so the animations and removeaction can be performed for all players if the checks clear. 

_chance = random(100); //calling a random number between 0-100. 
if(_chance >= 50) then { hint "Der Kassierer hat heimlich die Polizei informiert!"; [[0,format["ALARM! - Tankstelle: %1 wird ausgeraubt!", _shop]],"life_fnc_broadcast",west,false] spawn life_fnc_MP; }; //We set a 15% chance that the silent alarm is being triggered, wich sends a 911-message to the police. 

//Setup our progress bar.
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["Es wird ausgeraubt , bleib in der nähe (5m) (1%1)...","%"];
_progress progressSetPosition 0.01;
_cP = 0.01;

if(_rip) then
{
    while{true} do
    {
        sleep  0.85;
        _cP = _cP + 0.01;
        _progress progressSetPosition _cP;
        _pgText ctrlSetText format["Es wird ausgeraubt , bleib in der nahe (5m) (%1%2)...",round(_cP * 100),"%"];
        if(_cP >= 1) exitWith {};
        if(_robber distance _shop > 5) exitWith { };
        if!(alive _robber) exitWith {};
        
    }; // the loop continues til the progressbar is full, distance is exceeded or robber dies. 
    if!(alive _robber) exitWith { _rip = false; };
    if(_robber distance _shop > 5) exitWith { hint "Du warst zu weit weg! - Der Kassierer hat sein Geld in Sicherheit gebracht."; 5 cutText ["","PLAIN"]; _rip = false; };
    5 cutText ["","PLAIN"];
    titleText[format["Du hast %1 geklaut, nichts wie weg hier, die Cops sind auf dem Weg!",[_kassa] call life_fnc_numberText],"PLAIN"];
    life_cash = life_cash + _kassa; 
    _rip = false;
    life_use_atm = false;
    sleep (45 + random(75)); //Clerk in the store takes between 30-210 seconds before he manage to warn the police about the robbery. 
    life_use_atm = true; // Robber can not use the ATM at this point.
    if!(alive _robber) exitWith {};
    [[0,format["Notruf - Tankstelle: %2 wurde gerade von %1 ausgeraubt. Kasseninhalt: $%3",name _robber, _shop, [_kassa] call life_fnc_numberText]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
    [[0,format["NEWS: Tankstelle: %2 wurde vor kurzen %1 ausgeraubt. Kasseninhalt: $%3",name _robber, _shop, [_kassa] call life_fnc_numberText]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
    [[getPlayerUID _robber,name _robber,"100"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP; 
};
[[_shop,_robber,_action,0],"TON_fnc_shopState",false,false] spawn life_fnc_MP;