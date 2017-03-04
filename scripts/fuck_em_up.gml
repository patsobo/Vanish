var i;
var fires;
for (i = 0; i < room_height; i+=32){
    var fire = instance_create(room_width - 32, i, obj_fire_wall);  
    fire.vel_x = -5;
    fire.vel_y = 0;
    fires[i / 32] = fire;
}

return fires;
