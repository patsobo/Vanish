
var pressed = false;
var options = argument[0]
var i = 0;
for(i =0;i < ds_list_size(options); i++){
    pressed |= keyboard_check_pressed(options[| i]);
}
return pressed;
