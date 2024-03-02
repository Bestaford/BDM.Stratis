params ["_unit"];

private _areaCenter = BDM_gameArea select 0;
private _areaRadius = BDM_gameArea select 1;

private _randomPosition = [
	_areaCenter,	// center
	0,				// minDist
	_areaRadius,	// maxDist
	0,				// objDist
	0,				// waterMode
	0,				// maxGrad
	0,				// shoreMode
	[],				// blacklistPos
	_areaCenter		// defaultPos
	] call BIS_fnc_findSafePos;

_vd = _areaCenter vectorDiff _randomPosition;
_dir = (_vd select 0) atan2 (_vd select 1);
_dir = (_dir + 360) % 360;

_unit setDir _dir;
_unit setPos _randomPosition;