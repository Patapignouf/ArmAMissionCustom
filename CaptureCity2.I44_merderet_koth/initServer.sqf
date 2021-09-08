{
	[
		_x, 
		"Drapeau", 
		"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa", 
		"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa", 
		"true", 
		"true", 
		{
			// codeStart
			["Drapeau", "Début capture"] call BIS_fnc_showSubtitle;
		}, 
		{
			// codeProgress
			hint "Aller soldat !";
		}, 
		{
			// codeCompleted
			_flagPos = getPosASL _target;

			// Create new flag
			// ! Do not keep rotation !
			_newFlag = createVehicle ["Flag_US_F", _flagPos];
			// createVehicle is a bit random so need to reset position after creation
			_newFlag setPosASL _flagPos;

			// Olg flag removed
			deleteVehicle (_target);

			capturemarkers = capturemarkers +1; publicVariable "capturemarkers";

			if (capturemarkers == 4) then 
			{ 
				["end1", true] remoteExecCall ["BIS_fnc_endMission", 0];
			};
		}, 
		{
			// codeInterrupted
			["Drapeau", "Capture ratée!"] call BIS_fnc_showSubtitle;
		}, 
		[], 
		15, 
		0, 
		true, 
		false  
	] remoteExec ["BIS_fnc_holdActionAdd", 0, true]; 
} forEach [flag1, flag2, flag3, flag4];