//Add flag interactions
[[flag1, flag2, flag3, flag4]] execVM 'ctf.sqf';

//IA taskGarrison
{
[_x, _x, 75, [], true] call lambs_wp_fnc_taskGarrison;
} forEach [o1,o2,o3,o4,o5,o6,o7,o8,o9];


//South
[TPS, ["Teleport to the north insertion point!", { player setPos ([[[position TPN, 5]],[]] call BIS_fnc_randomPos); }]] remoteExec ["addAction"];
[TPS, ["Teleport to the west insertion point!", { player setPos ([[[position TPW, 5]],[]] call BIS_fnc_randomPos); }]] remoteExec ["addAction"];
[TPS, ["Teleport to the east insertion point!", { player setPos ([[[position TPE, 5]],[]] call BIS_fnc_randomPos); }]] remoteExec ["addAction"];

//East
[TPE, ["Teleport to the north insertion point!", { player setPos ([[[position TPN, 5]],[]] call BIS_fnc_randomPos); }]] remoteExec ["addAction"];
[TPE, ["Teleport to the west insertion point!", { player setPos ([[[position TPW, 5]],[]] call BIS_fnc_randomPos); }]] remoteExec ["addAction"];
[TPE, ["Teleport to the south insertion point!", { player setPos ([[[position TPS, 5]],[]] call BIS_fnc_randomPos); }]] remoteExec ["addAction"];

//West
[TPW, ["Teleport to the north insertion point!", { player setPos ([[[position TPN, 5]],[]] call BIS_fnc_randomPos); }]] remoteExec ["addAction"];
[TPW, ["Teleport to the east insertion point!", { player setPos ([[[position TPE, 5]],[]] call BIS_fnc_randomPos); }]] remoteExec ["addAction"];
[TPW, ["Teleport to the south insertion point!", { player setPos ([[[position TPS, 5]],[]] call BIS_fnc_randomPos); }]] remoteExec ["addAction"];

//North
[TPN, ["Teleport to the west insertion point!", { player setPos ([[[position TPW, 5]],[]] call BIS_fnc_randomPos); }]] remoteExec ["addAction"];
[TPN, ["Teleport to the east insertion point!", { player setPos ([[[position TPE, 5]],[]] call BIS_fnc_randomPos); }]] remoteExec ["addAction"];
[TPN, ["Teleport to the south insertion point!", { player setPos ([[[position TPS, 5]],[]] call BIS_fnc_randomPos); }]] remoteExec ["addAction"];