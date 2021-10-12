nb_opf_alive = {side _x == east} count allUnits;
nb_player = {isPlayer _x} count allUnits;

_opfor = [];
{if ((side _x) == east) then {_opfor pushBack _x}} forEach allUnits;
publicvariable "_opfor";

{
	_x setskill ["spotTime",1];
	_x setskill ["spotDistance",0.01];
}
forEach (_opfor);

isStealth = true;

while {isStealth} do
{
	sleep 15;
	nb_opf_alive = {isPlayer _x && side _x == opfor} count allUnits;
    nb_player = {isPlayer _x} count allUnits;
	{
		currentIA = _x;
		{
		if (isStealth) then 
			{
				isStealth = ((isNull assignedTarget currentIA) || (currentIA knowsAbout _x < 3.5));
			} else 
			{
				hint ((name currentIA) + " has spotted " + (name _x));
			};
		} forEach (allUnits select {isPlayer _x});
		
	} forEach _opfor;
	
	//Recalcul active enemy unit
	_opfor = [];
	{if ((side _x) == east) then {_opfor pushBack _x}} forEach allUnits;
	
	//public variables
	publicvariable "_opfor";
	publicvariable "nb_opf_alive";
	publicvariable "nb_player";
};

["end1", false] remoteExecCall ["BIS_fnc_endMission", 0];