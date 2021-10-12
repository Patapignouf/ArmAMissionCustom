if (hasInterface) then
{
   //capturemarkers = capturemarkers +1; publicVariable "capturemarkers";
   if (side player == independent) then
   {
	  random_pos = selectRandom spawn_pos;
      player setPos (getPos random_pos);
      spawn_pos = spawn_pos - [random_pos];
      publicvariable "spawn_pos";
	  for "_i" from 0 to 4 do { player addItem "ACE_quikclot" };
	  player setUnitTrait ["camouflageCoef", 0.1];
	  if (random 1 > 0.5) then
	  {
		player addWeapon "hgun_Rook40_F";
		player addMagazine "16Rnd_9x21_Mag";
		player addMagazine "16Rnd_9x21_Mag";
	  };
   };
};