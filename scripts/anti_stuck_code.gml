// Assume blocks are sized 32
var thres = 16;
var stuck = false;
with(obj_player){

    var collision_checks = get_collision_blocks(obj_player);
    var i;
    var block = noone;
    
    for (i = 0; i < array_length_1d(collision_checks); i++){
        if (instance_place(x, y, collision_checks[i])){
            if (collision_checks[i] == obj_crusher && collision_checks[i].active == false){
                continue;
            }
            block = instance_place(x, y, collision_checks[i]);
            break;
        }
    }
    
    if (block != noone){
        if (abs(block.x + thres - x) < thres + 10 || abs(block.y + thres - y) < thres + 7){
            stuck = true;
            
            show_debug_message("Stuck!");
            
            var dir = point_direction(block.x, block.y, x, y);
            while (check_collision(x,y, obj_player)){
                x += cos(degtorad(dir));
                y -= sin(degtorad(dir));
            }
        }
    }
}
