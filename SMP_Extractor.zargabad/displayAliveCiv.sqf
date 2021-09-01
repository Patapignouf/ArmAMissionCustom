while {true} do
{
	[format ["Civilian alive counter : %1",(nb_player-nb_blu_alive-nb_opf_alive)]] remoteExec ["hint"];
    sleep 180;	
};