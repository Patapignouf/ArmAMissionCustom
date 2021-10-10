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
};