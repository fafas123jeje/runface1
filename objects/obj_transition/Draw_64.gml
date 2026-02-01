var sw = display_get_gui_width();
var sh = display_get_gui_height();

draw_sprite_ext(
    sprite_index,
    0,
    gui_x,
    0,
    sw / sprite_get_width(sprite_index),
    sh / sprite_get_height(sprite_index),
    0,
    c_white,
    1
);

