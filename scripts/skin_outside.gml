with(obj_wall){
    if (place_meeting(x, y-32, obj_wall)){
        sprite_index = spr_dirt
    } else {    
        sprite_index = spr_grass;
    }
}
