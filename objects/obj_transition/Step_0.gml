// mover de derecha a izquierda
gui_x -= speed;

// cuando ya cubrió toda la pantalla
if (gui_x <= 0 && !global.transition_done) {
    show_debug_message("COLISION TRANSICION");

    global.current_stage = 2;
    global.transition_active = false;
    global.transition_done = true;

    // cambiar fondo
    var layer_id = layer_get_id("Background");
    var bg_element = layer_background_get_id(layer_id);

    layer_background_sprite(bg_element, sprite_isac);
    layer_background_xscale(bg_element, room_width / sprite_get_width(sprite_isac));
    layer_background_yscale(bg_element, room_height / sprite_get_height(sprite_isac));
}

// cuando ya salió completamente por la izquierda
if (gui_x <= -display_get_gui_width()) {
    instance_destroy();
}

