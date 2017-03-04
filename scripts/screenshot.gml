var surface_x = surface_get_width(application_surface);
var surface_y = surface_get_height(application_surface)

//var surf = surface_create(surface_x, surface_y);
//surface_set_target(surf);
//draw_clear_alpha(c_black, 0);
//shot = sprite_create_from_surface(surf, view_xview, view_yview, view_wview, view_hview, false, true, 0, 0);
shot = sprite_create_from_surface(application_surface, 0, 0, surface_x, surface_y, false, true, 0, 0);
//surface_reset_target();
//surface_free(surf);

return shot;
