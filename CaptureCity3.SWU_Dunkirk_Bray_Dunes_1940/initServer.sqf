if (isServer) then {
capturemarkers = 0;
publicVariable "capturemarkers";
};



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
if (capturemarkers == 5) then 
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
} forEach [flag1, flag2, flag3, flag4, flag5];


//IA taskGarrison
{
[_x, _x, 75, [], true] call lambs_wp_fnc_taskGarrison;
} forEach [o1,o2,o3,o4,o5,o6,o7];

//IA taskPatrol
{
[_x, _x, 250] call lambs_wp_fnc_taskPatrol;
} forEach [p1,p2,p3,p4,p5,p6,p7];


//Teleport to boat
[TPA, ["Teleport to the north insertion point!", { player moveInCargo (selectRandom [b1,b2]) }]] remoteExec ["addAction"];
