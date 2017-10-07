if (instance_number(obj_window) > 0){

    if (obj_window.sprite_index == spr_window_lightning && obj_window.image_index >= obj_window.image_number - 3) {
        shader_set(shader_white);
    }
    draw_self();
    shader_reset();
} else {
    draw_self();
}
