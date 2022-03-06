nb_ind_alive = {isPlayer _x && side _x == independent} count allUnits;

while {nb_ind_alive!=0} do
{
	nb_ind_alive = {isPlayer _x && side _x == independent} count allUnits;
	publicvariable "nb_ind_alive";
    sleep 3;	
};

["end1", false] remoteExecCall ["BIS_fnc_endMission", 0];