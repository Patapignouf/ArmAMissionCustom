_ammo1 = getArtilleryAmmo [m1] select 0;
_ammo2 = getArtilleryAmmo [m2] select 0;
_ammo3 = getArtilleryAmmo [m3] select 0;
_rounds = 1000;
while{_rounds>0} do {
 _tgt1 = target2 call BIS_fnc_randomPosTrigger;
 _tgt2 = target2 call BIS_fnc_randomPosTrigger;
 _tgt3 = target2 call BIS_fnc_randomPosTrigger;
 m1 doArtilleryFire[_tgt1,_ammo1,1];
 sleep 1;
 m2 doArtilleryFire[_tgt2,_ammo2,1];
 sleep 1;
 m3 doArtilleryFire[_tgt3,_ammo3,1];
 _rounds = _rounds - 1;
 sleep 1;
};