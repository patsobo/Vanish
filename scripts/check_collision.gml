var i;
var collision_checks;
collision_checks[0] = obj_wall;
collision_checks[1] = obj_barrier;
collision_checks[2] = obj_crystal;
for (i = 0; i < array_length_1d(collision_checks); i++){
    if (place_meeting(argument[0], argument[1], collision_checks[i]))
        return true;
}
return false;
