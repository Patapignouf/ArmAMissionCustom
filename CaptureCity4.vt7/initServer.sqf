//Add flag interactions
[[flag1]] execVM 'ctf.sqf';

//Init checkdeath
[] execVM 'checkdeath.sqf';


//IA taskGarrison

testGroup = ["o1","o2","o3","o4","o5","o6","o7","o8","o9","o10","o11","o12","o13"];
currentGroup = nil;

{
	if (!isNil _x) then
	{
		currentGroup = missionNamespace getVariable _x;
		if (round (random 2) != 0) then 
		{
			diag_log "Task_Garrison !";
			[currentGroup, currentGroup, 75, [], true, true, -2, true] call lambs_wp_fnc_taskGarrison;
		} 
		else 
		{
			diag_log "Task_Camp !";
			[currentGroup, getPos (leader currentGroup), 75, [], true, true] call lambs_wp_fnc_taskCamp;
		};
	};
} forEach testGroup;

//IA taskPatrol
{
[_x, [], 250] call lambs_wp_fnc_taskPatrol;
} forEach [p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11];


