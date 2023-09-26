diag_log "------------------------------------------------------------------------------------------------------";
diag_log "---------------------------------- Starting Phoenix Life Server Init ----------------------------------";
diag_log "---------------------------------- <<<<<<www.phoenix-multigaming.de>>>>> ----------------------------------";
diag_log "------------------------------------------------------------------------------------------------------";
if (isServer) then {call compile preprocessFile "map\skool.sqf";};
enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;

if(!isDedicated) then { X_Client = true;};
enableSaving[false,false];

life_versionInfo = "Life RPG Phoenix Custom Beta";
//Load Briefing
[] execVM "briefing.sqf"; 
[] execVM "KRON_Strings.sqf";
[] execVM "nosidechat.sqf";
//[] execVM "map\npc_process.sqf"; // Crafting System 
[] execVM "map\npc_adac.sqf";
//[] execVM "core\functions\fn_marker_on_map.sqf";


StartProgress = true;


// Monitor
[] execVM "core\news\monitor.sqf";

//Teargas
[] execVM "core\addons\Teargas\teargas.sqf";
//weather
[] execVM "core\addons\weather\real_weather.sqf";

//Fastrope
[] execVM "core\addons\fastrope\zlt_fastrope.sqf";

if (!isDedicated) then {
	[] execVM "IgiLoad\IgiLoadInit.sqf";
};

[] spawn
{
	sleep 60;
	[] call life_fnc_updateClothing;
};

"BIS_fnc_MP_packet" addPublicVariableEventHandler {_this call life_fnc_MPexec};
