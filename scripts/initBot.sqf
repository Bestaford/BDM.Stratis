params ["_bot"];

_bot setSkill 1;
_bot call BDM_fnc_initUnit;
_bot call BDM_fnc_respawn;

private _areaCenter = BDM_gameArea select 0;
private _areaRadius = BDM_gameArea select 1;

private _group = group _bot;

for "_i" from 1 to 30 do
{
	_group addWaypoint [_areaCenter, _areaRadius];
};
_group addWaypoint [_areaCenter, -1];