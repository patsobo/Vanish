
var released = false;
var options = argument[0]
var i = 0;
for(i =0;i < ds_list_size(options); i++){
    released &= keyboard_check_released(options[| i]);
}
return pressed;
