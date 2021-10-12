nb_ind_alive = {isPlayer _x && side _x == independent} count allUnits;
nb_blu_alive = {isPlayer _x && side _x == blufor} count allUnits;
nb_opf_alive = {isPlayer _x && side _x == opfor} count allUnits;
nb_player = {isPlayer _x} count allUnits;

while {nb_ind_alive!=0 || ((nb_blu_alive-nb_opf_alive)!=nb_player)} do
{
	nb_ind_alive = {isPlayer _x && side _x == independent} count allUnits;
    nb_blu_alive = {isPlayer _x && side _x == blufor} count allUnits;
	nb_opf_alive = {isPlayer _x && side _x == opfor} count allUnits;
    nb_player = {isPlayer _x} count allUnits;

	publicvariable "nb_ind_alive";
	publicvariable "nb_blu_alive";
	publicvariable "nb_opf_alive";
	publicvariable "nb_player";
    sleep 3;	
};

["end1", false] remoteExecCall ["BIS_fnc_endMission", 0];