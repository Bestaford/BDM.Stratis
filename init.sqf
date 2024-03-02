enableSaving [false, false];

call compileFinal preprocessFileLineNumbers "scripts\compile.sqf";

if (isServer) then {
	call BDM_fnc_initServer;
};

if (!isDedicated && hasInterface) then {
	call BDM_fnc_initPlayer;
};