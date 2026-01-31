show_debug_message(place_meeting(x, y + 1, obj_floor));

// Gravedad
vsp += gravity;

// Colisión vertical con el piso
if (place_meeting(x, y + vsp, obj_floor)) {
    while (!place_meeting(x, y + sign(vsp), obj_floor)) {
        y += sign(vsp);
    }
    vsp = 0;
    on_ground = true;
} else {
    y += vsp;
    on_ground = false;
}

// Salto
if (keyboard_check_pressed(vk_space) && on_ground) {
    vsp = jump_force;
}
