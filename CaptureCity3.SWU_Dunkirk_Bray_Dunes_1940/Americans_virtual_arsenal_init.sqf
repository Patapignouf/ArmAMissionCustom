//Init 
_crate = _this select 0;
["AmmoboxInit",[_crate,false,{true}]] spawn BIS_fnc_arsenal;

//IFA3 American gear & weapons
_availableHeadgear = [
"H_LIB_US_AB_Helmet", 	
"H_LIB_US_AB_Helmet_2", 	
"H_LIB_US_AB_Helmet_3", 	
"H_LIB_US_AB_Helmet_4", 	
"H_LIB_US_AB_Helmet_5", 	
"H_LIB_US_AB_Helmet_Jump_1", 	
"H_LIB_US_AB_Helmet_Jump_2", 	
"H_LIB_US_AB_Helmet_Clear_1", 	
"H_LIB_US_AB_Helmet_Clear_2", 	
"H_LIB_US_AB_Helmet_Clear_3", 	
"H_LIB_US_AB_Helmet_Medic_1", 	
"H_LIB_US_AB_Helmet_Plain_1", 	
"H_LIB_US_AB_Helmet_Plain_2", 	
"H_LIB_US_AB_Helmet_Plain_3", 	
"H_LIB_US_AB_Helmet_NCO_1", 	
"H_LIB_US_AB_Helmet_NCO_2", 	
"H_LIB_US_AB_Helmet_CO_1", 	
"H_LIB_US_AB_Helmet_CO_2", 	
"H_LIB_US_Helmet_Pilot", 	
"H_LIB_US_Helmet_Pilot_Glasses_Up", 	
"H_LIB_US_Helmet_Pilot_Glasses_Down", 	
"H_LIB_US_Helmet_Pilot_Respirator", 	
"H_LIB_US_Helmet_Pilot_Respirator_Glasses_Up", 	
"H_LIB_US_Helmet_Pilot_Respirator_Glasses_Down", 	
"H_LIB_US_Pilot_Cap", 	
"H_LIB_US_Pilot_Cap_Khaki", 	
"H_LIB_US_Helmet", 	
"H_LIB_US_Helmet_ns", 	
"H_LIB_US_Helmet_os", 	
"H_LIB_US_Helmet_Net", 	
"H_LIB_US_Helmet_Net_ns", 	
"H_LIB_US_Helmet_Net_os", 	
"H_LIB_US_Helmet_Med", 	
"H_LIB_US_Helmet_Med_ns", 	
"H_LIB_US_Helmet_Med_os", 	
"H_LIB_US_Helmet_Cap", 	
"H_LIB_US_Helmet_CO", 	
"H_LIB_US_Helmet_NCO", 	
"H_LIB_US_Helmet_First_lieutenant", 	
"H_LIB_US_Helmet_Second_lieutenant", 	
"H_LIB_US_Helmet_Tank", 	
"H_LIB_US_Rangers_Helmet", 	
"H_LIB_US_Rangers_Helmet_ns", 	
"H_LIB_US_Rangers_Helmet_os", 	
"H_LIB_US_Rangers_Helmet_Cap", 	
"H_LIB_US_Rangers_Helmet_First_lieutenant",
"H_LIB_US_Rangers_Helmet_Second_lieutenant", 	
"H_LIB_US_Rangers_Helmet_NCO",
"H_LIB_US_Helmet_w", 	
"H_LIB_US_Helmet_Cover_w", 	
"H_LIB_US_Helmet_Net_w", 	
"H_LIB_US_Helmet_Med_w", 	
"H_LIB_US_Helmet_Cap_w", 	
"H_LIB_US_Helmet_First_lieutenant_w", 	
"H_LIB_US_Helmet_Second_lieutenant_w",
"LIB_Binocular_US",
"ItemWatch", 	
"ItemCompass", 	
"ItemMap", 	
"FirstAidKit", 	
"ToolKit", 		
"LIB_ToolKit" 
];

// Uniforms
_availableUniforms = [
"U_LIB_US_AB_Uniform_M42", 	
"U_LIB_US_AB_Uniform_M42_Medic", 	
"U_LIB_US_AB_Uniform_M42_506", 	
"U_LIB_US_AB_Uniform_M42_Gas", 	
"U_LIB_US_AB_Uniform_M42_FC", 	
"U_LIB_US_AB_Uniform_M42_corporal", 	
"U_LIB_US_AB_Uniform_M42_NCO", 	
"U_LIB_US_AB_Uniform_M43", 	
"U_LIB_US_AB_Uniform_M43_Medic", 	
"U_LIB_US_AB_Uniform_M43_Flag", 	
"U_LIB_US_AB_Uniform_M43_FC", 	
"U_LIB_US_AB_Uniform_M43_corporal", 	
"U_LIB_US_AB_Uniform_M43_NCO", 	
"U_LIB_US_Pilot", 	
"U_LIB_US_Pilot_2", 	
"U_LIB_US_Bomber_Pilot", 	
"U_LIB_US_Bomber_Crew", 	
"U_LIB_US_Private", 	
"U_LIB_US_Private_1st", 	
"U_LIB_US_Corp", 	
"U_LIB_US_Sergeant", 	
"U_LIB_US_Eng", 	
"U_LIB_US_Med", 	
"U_LIB_US_Tank_Crew", 	
"U_LIB_US_Tank_Crew2", 	
"U_LIB_US_NAC_Uniform", 	
"U_LIB_US_NAC_Uniform_2", 	
"U_LIB_US_NAC_Med", 	
"U_LIB_US_Rangers_Uniform", 	
"U_LIB_US_Rangers_Private_1st", 	
"U_LIB_US_Rangers_Corp", 	
"U_LIB_US_Rangers_Sergeant", 	
"U_LIB_US_Rangers_Eng", 	
"U_LIB_US_Rangers_Med"  	
	
];

// Vests
_availableVests = [
"V_LIB_US_AB_Vest_Bar", 	
"V_LIB_US_AB_Vest_M1919", 	
"V_LIB_US_AB_Vest_Asst_MG", 	
"V_LIB_US_AB_Vest_Carbine", 	
"V_LIB_US_AB_Vest_Carbine_eng", 	
"V_LIB_US_AB_Vest_Carbine_nco", 	
"V_LIB_US_AB_Vest_Carbine_nco_Radio", 	
"V_LIB_US_AB_Vest_Garand", 	
"V_LIB_US_AB_Vest_Grenadier", 	
"V_LIB_US_AB_Vest_Thompson", 	
"V_LIB_US_AB_Vest_Thompson_nco", 	
"V_LIB_US_AB_Vest_Thompson_nco_Radio", 	
"V_LIB_US_AB_Vest_45", 	
"V_LIB_US_AB_Vest_Padded_Bar", 	
"V_LIB_US_AB_Vest_Padded_M1919", 	
"V_LIB_US_AB_Vest_Padded_Asst_MG", 	
"V_LIB_US_AB_Vest_Padded_Carbine", 	
"V_LIB_US_AB_Vest_Padded_Carbine_eng", 	
"V_LIB_US_AB_Vest_Padded_Carbine_nco", 	
"V_LIB_US_AB_Vest_Padded_Carbine_nco_Radio",	
"V_LIB_US_AB_Vest_Padded_Garand", 	
"V_LIB_US_AB_Vest_Padded_Grenadier", 	
"V_LIB_US_AB_Vest_Padded_Thompson", 	
"V_LIB_US_AB_Vest_Padded_Thompson_nco", 
"V_LIB_US_AB_Vest_Padded_Thompson_nco_Radio", 	
"V_LIB_US_AB_Vest_Padded_45", 	
"V_LIB_US_LifeVest", 	
"V_LIB_US_Vest_Bar", 	
"V_LIB_US_Vest_M1919", 	
"V_LIB_US_Vest_Asst_MG", 	
"V_LIB_US_Vest_Carbine", 	
"V_LIB_US_Vest_Carbine_eng", 	
"V_LIB_US_Vest_Carbine_nco", 	
"V_LIB_US_Vest_Carbine_nco_Radio", 	
"V_LIB_US_Vest_Garand", 	
"V_LIB_US_Vest_Grenadier", 	
"V_LIB_US_Vest_Medic", 	
"V_LIB_US_Vest_Medic2", 	
"V_LIB_US_Vest_Thompson", 	
"V_LIB_US_Vest_Thompson_nco", 	
"V_LIB_US_Vest_Thompson_nco_Radio", 	
"V_LIB_US_Vest_45", 	
"V_LIB_US_Assault_Vest", 	
"V_LIB_US_Assault_Vest_Light", 	
"V_LIB_US_Assault_Vest_Thompson", 	
"V_LIB_US_Assault_Vest_dday" 
];

// Backpacks
_availableBackpacks = [
"B_LIB_US_Bag", 	
"LIB_Backpack_us", 	
"B_LIB_US_BARBag",	
"LIB_Backpack_US_BAR", 	
"B_LIB_US_BazBag", 	
"LIB_Backpack_US_Baz", 	
"B_LIB_US_MineBag", 	
"LIB_Backpack_US_Mine", 	
"B_LIB_FunkBag", 	
"FunkBag", 	
"B_LIB_FunkBag_Empty", 	
"B_LIB_RadioBag", 
"RadioBag", 	
"B_LIB_RadioBag_Empty", 	
"LIB_Tripod_Bag", 	
"LIB_M2_Tripod_Bag", 		
"LIB_M2_60_Bag", 	
"B_LIB_US_Radio",		
"B_LIB_US_Radio_ACRE2",
"B_LIB_US_M36", 	
"B_LIB_US_M36_KOTH",
"B_LIB_US_M36_Rope", 	
"B_LIB_US_M36_Bandoleer", 	
"B_LIB_US_Type5", 	
"B_LIB_US_M36_Rocketbag", 	
"B_LIB_US_M36_Rocketbag_Empty", 	
"B_LIB_US_M36_Rocketbag_Big_Empty", 	
"B_LIB_US_M36_MGbag", 	
"B_LIB_US_TypeA3", 	
"B_LIB_US_Backpack", 	
"B_LIB_US_Backpack_dday",	
"B_LIB_US_Backpack_Mk2", 	
"B_LIB_US_Backpack_Bandoleer", 	
"B_LIB_US_Backpack_eng", 	
"B_LIB_US_MedicBackpack", 	
"B_LIB_US_MedicBackpack_Empty", 	
"B_LIB_US_MedicBackpack_Big_Empty", 	
"B_LIB_US_Backpack_RocketBag", 	
"B_LIB_US_Backpack_RocketBag_Empty", 	
"B_LIB_US_Backpack_RocketBag_Big_Empty", 	
"B_LIB_US_RocketBag", 	
"B_LIB_US_RocketBag_Empty", 	
"B_LIB_US_RocketBag_Big_Empty", 	
"B_LIB_US_Radio_Empty", 	
"B_LIB_US_Bandoleer", 	
"B_LIB_US_MGbag", 
"B_LIB_US_MGbag_Empty", 	
"B_LIB_US_MGbag_Big_Empty", 	
"B_LIB_US_M2Flamethrower",
"B_LIB_SD_US_Army_LMG", 	
"B_LIB_SD_US_Army_AR", 	
"B_LIB_SD_US_Airborne_LMG",
"LIB_M2_60_Tripod_Deployed"		
];

// Magazines
_availablemagazinecargoindependent  = [
"LIB_7Rnd_45ACP", 	
"LIB_1Rnd_flare_white", 	
"LIB_1Rnd_flare_red", 	
"LIB_1Rnd_flare_green", 	
"LIB_1Rnd_flare_yellow",
"LIB_30Rnd_45ACP", 	
"LIB_30Rnd_45ACP_t", 	
"LIB_30Rnd_M3_GreaseGun_45ACP", 		
"LIB_50Rnd_45ACP",
"LIB_5Rnd_762x63", 	
"LIB_5Rnd_762x63_t",
"LIB_8Rnd_762x63", 	
"LIB_8Rnd_762x63_t", 	
"LIB_15Rnd_762x33", 	
"LIB_15Rnd_762x33_t", 	
"LIB_1Rnd_145x114", 	
"LIB_M2_Flamethrower_Mag", 	
"LIB_M2_Flamethrower_Mag_Empty",
"LIB_50Rnd_762x63", 	
"LIB_20Rnd_762x63",
"LIB_1Rnd_60mm_M6",
"LIB_US_Mk_2",
"LIB_US_M18", 	
"LIB_US_M18_Red", 	
"LIB_US_M18_Green", 	
"LIB_US_M18_Yellow",
"LIB_1Rnd_G_Mk2", 
"LIB_1Rnd_G_M9A1",
"LIB_US_M1A1_ATMINE_mag", 	
"LIB_US_M3_MINE_mag", 	
"LIB_US_TNT_4pound_mag" 
   
];

// Weapons
_availableWeaponsindependent  = [
"LIB_Colt_M1911",
"LIB_FLARE_PISTOL", 
"LIB_M1A1_Thompson",
"LIB_M3_GreaseGun",
"LIB_M1928_Thompson",
"LIB_M1928A1_Thompson",
"LIB_M1903A3_Springfield",
"LIB_M1_Garand", 	
"LIB_M1_Carbine",
"LIB_M2_Flamethrower",
"LIB_M1903A3_Springfield_Bayonet",
"LIB_M1_Garand_Bayonet", 
"LIB_M1_Garand_M7", 
"LIB_M1A1_Carbine",
"LIB_M1919A4", 	
"LIB_M1918A2_BAR", 		
"LIB_M1919A6",
"LIB_M1903A4_Springfield",
"LIB_M1A1_Bazooka"   	
];

//Populate with predefined items and whatever is already in the crate
[_crate,((backpackCargo _crate) + _availableBackpacks)] call BIS_fnc_addVirtualBackpackCargo;
[_crate,((itemCargo _crate) + _availableHeadgear + _availableUniforms + _availableVests)] call BIS_fnc_addVirtualItemCargo;
[_crate,((magazineCargo _crate) + _availablemagazinecargoindependent )] call BIS_fnc_addVirtualMagazineCargo;
[_crate,((weaponCargo _crate) + _availableWeaponsindependent )] call BIS_fnc_addVirtualWeaponCargo;