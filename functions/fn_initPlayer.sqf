params ["_player"];

// get array of all available spawn points
_markers = [] call BDM_fnc_respawnMarkers;

// lower rating so that player becomes hostile to others
_player addRating -1e6;

// teleport player to a random spawn point
_player setPos selectRandom _markers;

// setup AI
if (!isPlayer _player) then {
    _skill = 0.5 + random 0.5;
    _player setSkill _skill;
    _group = group _player;
    {
        _group addWaypoint [_x, 0];
    } forEach _markers;
};

true;