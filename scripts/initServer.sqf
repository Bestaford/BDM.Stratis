private _markerName = "area_0";
private _markerPos = getMarkerPos _markerName;
private _markerSize = getMarkerSize _markerName;
private _radius = _markerSize select 0;

BDM_gameArea = [_markerPos, _radius];
publicVariable "BDM_gameArea";

private _sides = [
	west,
	east,
	resistance
];

{
	private _side1 = _x;
	{
		private _side2 = _x;
		_side1 setFriend [_side2, 0];
	} forEach _sides;
} forEach _sides;

private _allBots = allUnits select {!isPlayer _x};

{
	_x spawn BDM_fnc_initBot;
} forEach _allBots;