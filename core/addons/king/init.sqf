/*
	Master Life Configuration File
	This file is to setup variables for the client, there are still other configuration files in the system

*****************************
****** Backend Variables *****
*****************************
*/
//_handle = [] spawn compile PreprocessFileLineNumbers "core\addons\king\gambling\configuration.sqf";
//diag_log "::King Client:: Initialization Variables gambling";
//waitUntil {scriptDone _handle};

//_handle = [] spawn compile PreprocessFileLineNumbers "core\addons\king\gambling\functions.sqf";
//diag_log "::King Client:: Initialization Functions gambling";
//waitUntil {scriptDone _handle};

_handle = [] spawn compile PreprocessFileLineNumbers "core\addons\king\speedtrap\configuration.sqf";
diag_log "::King Client:: Initialization Variables speedtrap";
waitUntil {scriptDone _handle};

_handle = [] spawn compile PreprocessFileLineNumbers "core\addons\king\speedtrap\functions.sqf";
diag_log "::King Client:: Initialization Functions speedtrap";
waitUntil {scriptDone _handle};

_handle = [] spawn compile PreprocessFileLineNumbers "core\addons\king\fuelchanger\configuration.sqf";
diag_log "::King Client:: Initialization Variables fuelchanger";
waitUntil {scriptDone _handle};

_handle = [] spawn compile PreprocessFileLineNumbers "core\addons\king\fuelchanger\functions.sqf";
diag_log "::King Client:: Initialization Functions fuelchanger";
waitUntil {scriptDone _handle};

//_handle = [] spawn compile PreprocessFileLineNumbers "core\addons\king\jailWork\configuration.sqf";
//diag_log "::King Client:: Initialization Variables jailWork";
//waitUntil {scriptDone _handle};

//_handle = [] spawn compile PreprocessFileLineNumbers "core\addons\king\jailWork\functions.sqf";
//diag_log "::King Client:: Initialization Functions jailWork";
//waitUntil {scriptDone _handle};