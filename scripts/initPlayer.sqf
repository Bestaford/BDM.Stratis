waitUntil {
	!isNil "BDM_gameArea" && alive player
};

player call BDM_fnc_initUnit;
player call BDM_fnc_respawn;