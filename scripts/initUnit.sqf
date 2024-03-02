params ["_unit"];

_unit addEventHandler ["Killed", {
	params ["_unit", "_killer"];
	if (isPlayer _killer) then {
		systemChat format ["%1 has been killed by %2.", _unit, _killer];
	};
}];

_unit addEventHandler ["Respawn", {
	params ["_unit", "_corpse"];
	_unit call BDM_fnc_respawn; 
}];