with(obj_wall){
    if (place_meeting(x, y-32, obj_wall)){
        sprite_index = spr_dirt
    } else {    
        sprite_index = spr_grass;
    }
    
    var i;
    for (i = y + 32; i < room_height + 64; i+=32){
        if place_meeting(x,i, obj_wall){
            //instance_create(x,i-32, obj_background);
            
            var j;
            for (j = i - 32; j > y; j-=32){
                instance_create(x,j, obj_background);
            }
            break;
        }
    }
}

with (obj_fake_block){
    sprite_index = spr_grass
}
