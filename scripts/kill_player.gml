// We can add animations and only call this script when killing the player,
// rather than putting in that code everywhere it happens
if (instance_number(obj_shield) == 0){
    obj_player.is_dead = true;
    instance_create(0,0,obj_fade);
} else {
    obj_shield.got_hit = true;
}
