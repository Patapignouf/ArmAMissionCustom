
_buildingPlaces = [nearestBuilding (getPos x1)] call BIS_fnc_buildingPositions; 
_x1BuildingPlace = [0,((count _buildingPlaces)-1)] call BIS_fnc_randomInt;     
_powPos = getPos (nearestBuilding(getPos x1)); 
x1 setPos _powPos;  
x1 setPosATL ((nearestBuilding (getPos x1)) buildingPos _x1BuildingPlace); 
x1 disableAI "MOVE"; 
x1 switchMove "Acts_AidlPsitMstpSsurWnonDnon_loop";
x1 setCaptive true;
x1 removeWeaponGlobal (primaryWeapon x1); 
x1 removeWeaponGlobal (secondaryWeapon x1); 
x1 removeWeaponGlobal (handgunWeapon x1); 
removeHeadgear x1; 
removeGoggles x1; 
removeAllItems x1; 
{x1 removeMagazine _x} forEach magazines x1; 


[  
x1,  
"Hostage",  
"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",  
"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",  
"_this distance _target < 3",  
"_caller distance _target < 3",  
{["Hostage", "Free"] call BIS_fnc_showSubtitle},  
{},  
{["end1", true] remoteExecCall ["BIS_fnc_endMission", 0];},  
{},  
[],  
2,  
0,  
true,  
false  
] remoteExec ["BIS_fnc_holdActionAdd", 0, true];


{
[_x, _x, 50, [], true] call lambs_wp_fnc_taskGarrison;
} forEach [o1, o2, o3, o4];