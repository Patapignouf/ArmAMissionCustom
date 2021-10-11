if (hasInterface) then
{
	//TPA addAction ["Teleport to the boat!", { player moveInCargo (selectRandom [b1,b2]) }];
	TPA addAction ["Teleport to the boat 1 !", { player moveInCargo (selectRandom [b1]) }];
	TPA addAction ["Teleport to the boat 2 !", { player moveInCargo (selectRandom [b2]) }];	
	for "_i" from 0 to 1 do { player addItem "ACE_CableTie" }; 
	for "_i" from 0 to 7 do { player addItem "ACE_elasticBandage" };  
	for "_i" from 0 to 1 do { player addItem "ACE_tourniquet" }; 
	for "_i" from 0 to 1 do { player addItem "ACE_splint" }; 
	player addItem "ACE_MapTools";  
	player addItem "ACE_morphine";
	
	//Arsenal without save/load
	[missionNamespace, "arsenalOpened", {
		disableSerialization;
		params ["_display"];
		_display displayAddEventHandler ["keydown", "_this select 3"];
		{(_display displayCtrl _x) ctrlShow false} forEach [44151, 44150, 44146, 44147, 44148, 44149, 44346];
	}] call BIS_fnc_addScriptedEventHandler;
};