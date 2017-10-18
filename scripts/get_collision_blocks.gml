var current_obj = argument[0];
var collision_checks = ds_list_create();

if (current_obj == obj_player){
    ds_list_add(collision_checks, obj_wall);
    ds_list_add(collision_checks, obj_barrier);
    ds_list_add(collision_checks, obj_crystal);
    ds_list_add(collision_checks, obj_crusher);
    ds_list_add(collision_checks, obj_cage);
    ds_list_add(collision_checks, obj_orb);
    ds_list_add(collision_checks, obj_wall_slit);
    ds_list_add(collision_checks, obj_wall_half);
    with(current_obj){
        if(vel_y >= 0 && !place_meeting(x,y,obj_platform)){
                ds_list_add(collision_checks, obj_platform);
        }
    }
    
} else if (current_obj == obj_axe){
    ds_list_add(collision_checks, obj_wall);
    ds_list_add(collision_checks, obj_crusher);
    ds_list_add(collision_checks, obj_cage);
    ds_list_add(collision_checks, obj_orb);
    ds_list_add(collision_checks, obj_wall_slit);
    ds_list_add(collision_checks, obj_wall_half);
    
// Could delete because default option
} else if (current_obj == obj_moving_portal){
    ds_list_add(collision_checks, obj_wall);
    ds_list_add(collision_checks, obj_wall_half);

} else if (current_obj == obj_axe_grunt || current_obj == obj_grunt){
    ds_list_add(collision_checks, obj_wall);
    ds_list_add(collision_checks, obj_barrier);
    
} else if (current_obj == obj_skull){
    ds_list_add(collision_checks, obj_wall);
    ds_list_add(collision_checks, obj_skull);

// Could delte because default option
} else if (current_obj == obj_snake_head){
    ds_list_add(collision_checks, obj_wall);
        
} else if (current_obj == obj_arrow || current_obj == "fake_arrow"){
    ds_list_add(collision_checks, obj_wall);

} else if (current_obj == obj_archer){
    ds_list_add(collision_checks, obj_wall);
    ds_list_add(collision_checks, obj_cage);

} else if (current_obj == obj_spider){
    ds_list_add(collision_checks, obj_wall);
    
} else if (current_obj == obj_laser){
    ds_list_add(collision_checks, obj_wall);

} else {
    show_debug_message("Object uses default collisions: " + current_obj); 
    ds_list_add(collision_checks, obj_wall);
}

return collision_checks;
