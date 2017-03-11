var gravity_x = 0;
var gravity_y = 1;
var counter = 0;
var pos_x = argument[0];
var pos_y = argument[1];
var vel_x_here = argument[2];
var vel_y_here = argument[3];

// While the fake arrow is still moving...
while(abs(vel_x_here) > 0.1 || abs(vel_y_here) > .1){
//while (1){
    counter++;
    
    //Gravity
    vel_x_here+=gravity_x;
    vel_y_here+=gravity_y;
    
    //show_debug_message("Pos: " + string(pos_x) + " : " + string(pos_y));
    if (show_arrow_checks){
        instance_create(pos_x, pos_y, obj_fake_arrow)
    }
    
    pos_x += vel_x_here;
    pos_y += vel_y_here;
    
    if(position_meeting(pos_x, pos_y, obj_player)){
        return true;
    }
    
    //Update position
    if(check_collision(pos_x+vel_x_here,pos_y,"fake_arrow") || check_collision(pos_x,pos_y+vel_y_here,"fake_arrow"))
    {
        return false;
    }
    
    if (pos_x > room_width || pos_x < 0 || pos_y < 0 || pos_y > room_height){
        return false;
    }

}

return false;
