// We can add animations and only call this script when killing the player,
// rather than putting in that code everywhere it happens
if (instance_number(obj_shield) == 0){
    with(obj_player){
        player_state = player_states.death;
        state_changed = true;
    }
} else {
    obj_shield.got_hit = true;
}
