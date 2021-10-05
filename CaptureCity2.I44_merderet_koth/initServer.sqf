//Add flag interactions
{  
[  
_x,  
"Drapeau",  
"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",  
"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",  
"true",  
"true",  
{["Drapeau", "Début capture"] call BIS_fnc_showSubtitle},  
{hint "Aller soldat !"},  
{
[(_this select 0),(_this select 2)] remoteExec ["BIS_fnc_holdActionRemove"];
[(_this select 0), "\A3\Data_F\Flags\flag_us_CO.paa"] remoteExec ["setFlagTexture"];
capturemarkers = capturemarkers +1; publicVariable "capturemarkers";
if (capturemarkers == 4) then 
{ 
 ["end1", true] remoteExecCall ["BIS_fnc_endMission", 0];}
},  
{["Drapeau", "Capture ratée!"] call BIS_fnc_showSubtitle},  
[],  
15,  
0,  
true,  
false  
] remoteExec ["BIS_fnc_holdActionAdd", 0, true]; 
} forEach [flag1, flag2, flag3, flag4];

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