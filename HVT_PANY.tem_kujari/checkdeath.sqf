nb_ind_alive = {isPlayer _x && side _x == independent} count allUnits;
nb_blu_alive = {isPlayer _x && side _x == blufor} count allUnits;
nb_civ_alive = {side _x == civilian} count allUnits;

while {nb_ind_alive>0 && nb_blu_alive>0 && nb_civ_alive>5} do
{
	nb_ind_alive = {isPlayer _x && side _x == independent} count allUnits;
	nb_blu_alive = {isPlayer _x && side _x == blufor} count allUnits;
	nb_civ_alive = {side _x == civilian} count allUnits;
	
    nb_player = {isPlayer _x} count allUnits;

	publicvariable "nb_ind_alive";
	publicvariable "nb_blu_alive";
	publicvariable "nb_civ_alive";
	hint "test";
    sleep 3;	
};

if (nb_ind_alive == 0) then
{
	["end1", true] remoteExecCall ["BIS_fnc_endMission", west];
	["end1", false] remoteExecCall ["BIS_fnc_endMission", resistance];
	
};
if (nb_blu_alive == 0) then
{
	["end1", false] remoteExecCall ["BIS_fnc_endMission", west];
	["end1", true] remoteExecCall ["BIS_fnc_endMission", resistance];
};
if (nb_civ_alive <= 5) then
{
	["end1", false] remoteExecCall ["BIS_fnc_endMission", 0];
};
