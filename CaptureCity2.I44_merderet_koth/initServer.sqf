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