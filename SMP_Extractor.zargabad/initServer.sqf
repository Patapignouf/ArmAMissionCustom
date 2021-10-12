diag_log "init01";
spawn_pos = [civspawn1, civspawn2, civspawn3, civspawn4, civspawn5, civspawn6, civspawn7, civspawn8, civspawn9];
publicvariable "spawn_pos";
random_pos = [];


[] execVM 'checkdeath.sqf';
[] execVM 'displayAliveCiv.sqf';
diag_log "init03";