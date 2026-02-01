show_debug_message("COLISION TRANSICION");

// cambiar estado
global.current_stage = 2;
global.transition_active = false;

// 1️⃣ obtener la capa
var layer_id = layer_get_id("Background");

// 2️⃣ obtener el ELEMENTO background (ESTO ES LO QUE FALTABA)
var bg_element = layer_background_get_id(layer_id);

// DEBUG 
show_debug_message("BG ELEMENT = " + string(bg_element));

// 3️⃣ cambiar el sprite
layer_background_sprite(bg_element, sprite_isac);

// 4️⃣ ajustar escala
layer_background_xscale(bg_element, room_width / sprite_get_width(sprite_isac));
layer_background_yscale(bg_element, room_height / sprite_get_height(sprite_isac));

// limpiar transición
instance_destroy();





