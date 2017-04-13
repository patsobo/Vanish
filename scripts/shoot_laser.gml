var laser;
var index = 1;
var pos_x = x;
var pos_y = y;


laser[0] = instance_create(pos_x,pos_y,obj_laser)

var width = laser[0].sprite_width;

laser[0].image_angle = angle;
pos_x += width * cos(degtorad(angle));
pos_y -= width * sin(degtorad(angle));

while (!check_collision(pos_x, pos_y, obj_laser) && pos_x > 0 
        && pos_x < room_width && pos_y > 0 && pos_y < room_height){
        
    laser[index] = instance_create(pos_x,pos_y,obj_laser)
    laser[index].image_angle = angle;
    index++;
    //pos_x += sprite_width * cos(degtorad(angle));
    //pos_y -= sprite_width * sin(degtorad(angle));

    pos_x += width * cos(degtorad(angle));
    pos_y -= width * sin(degtorad(angle));
}

return laser;
