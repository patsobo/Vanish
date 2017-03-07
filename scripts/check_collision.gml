var i;
var collision_checks;
collision_checks[0] = obj_wall;
collision_checks[1] = obj_barrier;
collision_checks[2] = obj_crystal;
collision_checks[3] = obj_crusher;
for (i = 0; i < array_length_1d(collision_checks); i++){
    if (place_meeting(argument[0], argument[1], collision_checks[i])){
        if (collision_checks[i] == obj_crusher && collision_checks[i].active == false){
            continue;
        }
        return true;
    }
}
return false;
