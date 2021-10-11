//Add flag interactions
[[flag1, flag2, flag3, flag4, flag5]] execVM 'ctf.sqf';


//IA taskGarrison
{
[_x, _x, 75, [], true, true, -2, true] call lambs_wp_fnc_taskGarrison;
} forEach [o1,o2,o3,o4,o5,o6,o7,o8];

//IA taskPatrol
{
[_x, [], 250] call lambs_wp_fnc_taskPatrol;
} forEach [p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11];


//Teleport to boat
//[TPA, ["Teleport to the boat!", { player moveInCargo (selectRandom [b1,b2]) }]] remoteExec ["addAction"];


