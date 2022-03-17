//Add flag interactions
//[[flag1]] execVM 'ctf.sqf';

//Init checkdeath
[] execVM 'engine\checkdeath.sqf';

//Init base mission parameters 
difficultyParameter = "Difficulty" call BIS_fnc_getParamValue;
lengthParameter = "MissionLength" call BIS_fnc_getParamValue;

//Init GroupDefinition
testGroupCivGarrison = ["c1","c2","c3","c4","c5","c6","c7","c8","c9","c10","c11","c12","c13"];

civilianTruck = ["CUP_I_V3S_Open_TKG"];

blueforVehicle = ["CUP_B_M1151_Deploy_USA",
"CUP_B_M1151_USA"];

//CivilianGroupDefinition
civilian_group = ["CUP_C_TK_Man_06_Coat", 
"CUP_C_TK_Man_05_Coat", 
"CUP_C_TK_Man_08"];

civilian_big_group = ["CUP_C_TK_Man_06_Coat", 
"CUP_C_TK_Man_05_Coat", 
"CUP_C_TK_Man_08", 
"CUP_C_TK_Man_04", 
"CUP_C_TK_Man_03_Jack", 
"CUP_C_TK_Man_02"
];

//EnemyGroupDefinition
baseEnemyGroup = ["CUP_O_TK_INS_Soldier_TL", 
"CUP_O_TK_INS_Soldier_MG", 
"CUP_O_TK_INS_Soldier_GL", 
"CUP_O_TK_INS_Soldier_AT",  
"CUP_O_TK_INS_Soldier", 
"CUP_O_TK_INS_Soldier_AR", 
"CUP_O_TK_INS_Sniper", 
"CUP_O_TK_INS_Soldier_Enfield", 
"CUP_O_TK_INS_Soldier_FNFAL"];

baseEnemyATGroup = ["CUP_O_TK_INS_Soldier_TL", 
"CUP_O_TK_INS_Soldier_AT", 
"CUP_O_TK_INS_Soldier_AT",
"CUP_O_TK_INS_Soldier_AT",
"CUP_O_TK_INS_Soldier"];

baseEnemyDemoGroup = ["CUP_O_TK_INS_Mechanic", 
"CUP_O_TK_INS_Mechanic",
"CUP_O_TK_INS_Bomber",
"CUP_O_TK_INS_Bomber"];

baseEnemyMortarGroup = ["CUP_O_TK_INS_Mechanic", 
"CUP_O_2b14_82mm_TK_INS",
"CUP_O_TK_INS_Bomber"];

avalaibleAmmoBox = ["CUP_BOX_TK_MILITIA_Wps_F", 
"CUP_BOX_TK_MILITIA_Ammo_F"
];

avalaibleSupplyBox = ["ACE_medicalSupplyCrate_advanced", 
"ACE_medicalSupplyCrate"
];

avalaibleHVT = ["CUP_O_TK_Officer"
];

avalaibleVIP = ["CUP_C_TK_Man_03_Waist"
];

avalaibleTypeOfObj = ["supply","ammo","vip","hvt"];

//Enemy Wave Composition
EnemyWaveLevel_1 = [baseEnemyGroup,baseEnemyATGroup];
EnemyWaveLevel_2 = [baseEnemyGroup,baseEnemyATGroup];
EnemyWaveLevel_3 = [baseEnemyGroup,baseEnemyATGroup];
EnemyWaveLevel_4 = [baseEnemyGroup,baseEnemyATGroup];
EnemyWaveLevel_5 = [baseEnemyGroup,baseEnemyATGroup,baseEnemyDemoGroup];
EnemyWaveLevel_6 = [baseEnemyGroup,baseEnemyATGroup,baseEnemyDemoGroup];
EnemyWaveLevel_7 = [baseEnemyGroup,baseEnemyATGroup,baseEnemyDemoGroup];
EnemyWaveLevel_8 = [baseEnemyGroup,baseEnemyATGroup,baseEnemyDemoGroup,baseEnemyMortarGroup];
EnemyWaveLevel_9 = [baseEnemyGroup,baseEnemyATGroup,baseEnemyDemoGroup,baseEnemyMortarGroup];
EnemyWaveLevel_10 = [baseEnemyGroup,baseEnemyATGroup,baseEnemyDemoGroup,baseEnemyMortarGroup];


//EnemyWaveGroups = [EnemyWaveLevel_1,EnemyWaveLevel_2,EnemyWaveLevel_3,EnemyWaveLevel_4,EnemyWaveLevel_5,EnemyWaveLevel_6,EnemyWaveLevel_7,EnemyWaveLevel_8,EnemyWaveLevel_9,EnemyWaveLevel_10];
EnemyWaveGroups = [EnemyWaveLevel_1,EnemyWaveLevel_6,EnemyWaveLevel_8];

publicVariable "EnemyWaveGroups";



//InitLogicDefinition 
AmbushPositions = [ambush_01,ambush_02,ambush_03,ambush_04,ambush_05,ambush_06,ambush_07,ambush_08,ambush_09,ambush_10,ambush_11];
PossibleObjectivePosition = [camp_east_02,camp_north_01,camp_north_west_01,camp_north_west_02,camp_south_01,camp_south_west_01,camp_west_01,camp_west_02,camp_south_02,camp_north_02,camp_south_west_02];
EnemyWaveSpawnPositions = [spawn_east,spawn_north,spawn_south,spawn_west];
publicVariable "EnemyWaveSpawnPositions";

///SETUP OBJECTIVES///

//Define 3 objectives
SupplyPositions = [];
SelectedObjectivePosition = objNull;
//SupplyObjects = [[o1,"supply"],[o2,"ammo"],[o3,"ammo"],[o4,"vip"],[o5,"hvt"]];
SupplyObjects = [];
currentObjType = nil;
currentRandomPos = [];
currentObj = objNull;
currentRandObj = objNull;
for [{_i = 0}, {_i <= lengthParameter}, {_i = _i + 1}] do //Peut être optimisé
{
	currentObjType = selectRandom avalaibleTypeOfObj;
	currentRandomPos = [nil, ["ground"]] call BIS_fnc_randomPos;
	switch (currentObjType) do
	{
		case "supply":
			{
				currentObj = createVehicle [selectRandom avalaibleSupplyBox, currentRandomPos, [], 0, "NONE"];
			};
		case "ammo":
			{
				currentObj = createVehicle [selectRandom avalaibleAmmoBox, currentRandomPos, [], 0, "NONE"];
			};
		case "hvt":
			{
				currentObj = leader ([currentRandomPos, east, [selectRandom avalaibleHVT],[],[],[],[],[],180] call BIS_fnc_spawnGroup);
			};
		case "vip":
			{
				currentObj = leader ([currentRandomPos, civilian, [selectRandom avalaibleVIP],[],[],[],[],[],180] call BIS_fnc_spawnGroup);
			};
		default { hint "default" };
	};
	SupplyObjects pushBack [currentObj,currentObjType];
};

publicVariable "SupplyObjects";
SelectedObjectives = [];
publicVariable "SelectedObjectives";
CompletedObjectives = [];
publicVariable "CompletedObjectives";

tempSupplyObjects = SupplyObjects;
for [{_i = 0}, {_i <= lengthParameter}, {_i = _i + 1}] do //Peut être optimisé en fusionnant cette boucle avec la boucle précédente
{
	SelectedObjectives pushBack (selectRandom tempSupplyObjects);
	tempSupplyObjects = tempSupplyObjects - [SelectedObjectives select (count SelectedObjectives - 1)];
	SelectedObjectivePosition = selectRandom PossibleObjectivePosition;
	SupplyPositions pushBack SelectedObjectivePosition;
	PossibleObjectivePosition = PossibleObjectivePosition - [SelectedObjectivePosition];
};

//Init checkobjective
[SelectedObjectives,mainobj_area] execVM 'engine\checkobjective.sqf';


///SETUP IA INIT BEHAVIOR///

//IA civilian taskGarrison
currentCivGroup = objNull;
civsGroup = [];
for [{_i = 0}, {_i <= 2}, {_i = _i + 1}] do
{ 

	currentCivGroup = [getPos mainobj, civilian, civilian_big_group,[],[],[],[],[],180] call BIS_fnc_spawnGroup;
	civsGroup pushBack currentCivGroup;
	
};
[civsGroup, false] execVM 'enemyGenerator\doGarrison.sqf';


//Generate AO
tempSupplyObjects = SelectedObjectives;
currentObject = objNull;
{
	currentObject = selectRandom tempSupplyObjects;
	tempSupplyObjects = tempSupplyObjects - [currentObject];
	diag_log format ["Objective generation started : %1 on position %2", currentObject, _x];
	[EnemyWaveLevel_1, civilian_group ,_x,difficultyParameter,currentObject] execVM 'enemyGenerator\generatePOI.sqf'; 

} forEach SupplyPositions;


//IA taskPatrol with level 1 enemy
[EnemyWaveLevel_1,AmbushPositions,difficultyParameter] execVM 'enemyGenerator\generatePatrol.sqf'; 

