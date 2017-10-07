var rm = room;//argument[0];
var i;

/*if (rm == boss_room)
    global.index = -1;
else {
    global.index++;
    global.levels[global.index] = true;
}*/

for (i = 0; i < array_length_1d(global.level_order) - 1; i++){
    if (rm == global.level_order[i]) {
        global.index = i+1;
        global.levels[i+1] = true;
        break;
    }
}

show_debug_message("next_level 11- Index: " + string(global.index));


var level = instance_create(0,0,obj_continue);
