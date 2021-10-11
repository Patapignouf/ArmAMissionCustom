//IA taskGarrison
{
[_x, _x, 75, [], true] call lambs_wp_fnc_taskGarrison;
} forEach [o1,o2,o3];

//IA taskPatrol
{
[_x, _x, 250] call lambs_wp_fnc_taskPatrol;
} forEach [p1,p2,p3];

//Check death
[] execVM 'checkdeath.sqf';
