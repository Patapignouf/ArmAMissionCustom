_flags = _this select 0;

if (isServer) then {
	capturemarkers = 0;
	publicVariable "capturemarkers";
	capturemarkerstotal = count _flags;
	publicVariable "capturemarkerstotal";
};

{
	[
		_x, 
		"Drapeau", 
		"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa", 
		"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa", 
		"true", 
		"true", 
		{
			// Action start code

			["Drapeau", "Début capture"] call BIS_fnc_showSubtitle;
		}, 
		{
			// Action on going code

			hint "Aller soldat !";
		},  
		{
			// Action successfull code

			// Old flag position and rotation
			_flagPos = getPosASL _target;
			_flagVectorDir = vectorDir _target;
			_flagVectorUp = vectorUp _target;

			// Create new flag
			_newFlag = createVehicle ["Flag_NATO_F", _flagPos];
			// createVehicle is a bit random so need to reset position after creation
			_newFlag setPosASL _flagPos;
			// Set flag rotation
			_newFlag setVectorDir _flagVectorDir;
			_newFlag setVectorUp _flagVectorUp;

			// Olg flag removed
			deleteVehicle (_target);

			capturemarkers = capturemarkers +1;
			publicVariable "capturemarkers";

			if (capturemarkers == capturemarkerstotal) then { 
				//The mission must go on the next objective
				//["end1", true] remoteExecCall ["BIS_fnc_endMission", 0];
			};
		}, 
		{
			// Action failed code

			["Drapeau", "Capture ratée!"] call BIS_fnc_showSubtitle;
		}, 
		[],  
		15,
		0, 
		true, 
		false
	] remoteExec ["BIS_fnc_holdActionAdd", 0, true];
} forEach _flags;