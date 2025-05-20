view_enabled = true;
view_visible[0] = true;

var _w = global.display_width;
var _h = global.display_height;
var _cam = camera_create_view(0, 0, _w, _h);

view_camera[0] = _cam;