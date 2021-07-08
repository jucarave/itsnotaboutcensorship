var width = 1920 / 2;
var height = 1080 / 2;

room_width = width;
room_height = height;

var cam = view_camera[0];
view_wport[0] = width;
view_hport[0] = height;
camera_set_view_size(cam, width, height);
view_set_wport(0, width);
view_set_hport(0, height);

window_set_position(display_get_width() / 2 - width / 2, display_get_height() / 2 - height / 2);
window_set_size(width, height);

surface_resize(application_surface, view_wport[0], view_hport[0]);