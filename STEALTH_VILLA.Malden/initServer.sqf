

//Add action to the flag
[flag1, ["Teleport to the north insertion point!", { player setPos ([[[position TPN, 5]],[]] call BIS_fnc_randomPos); }]] remoteExec ["addAction"];
[flag1, ["Switch on night!", {skipTime ((22 - dayTime + 24) % 24); [player,["camouflageCoef", 0.1]] remoteExec ["setUnitTrait"];}]] remoteExec ["addAction"];
[flag1, ["Switch on day!", {skipTime ((14 - dayTime + 24) % 24); [player,["camouflageCoef", 0.3]] remoteExec ["setUnitTrait"]; }]] remoteExec ["addAction"];


//Start stealth loop
[] execVM 'checkstealth.sqf';
