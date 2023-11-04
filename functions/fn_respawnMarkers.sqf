_result = [];

_count = 65;
_prefix = "respawn_";

for "_i" from 0 to _count - 1 do
{
    _markerName = _prefix + str _i;
    _result set [_i, getMarkerPos _markerName];
};

_result;