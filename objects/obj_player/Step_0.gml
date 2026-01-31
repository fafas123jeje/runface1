// Movimiento constante
x += speed_x;

// Gravedad
vsp += gravity;
y += vsp;

// Verificar piso
if (place_meeting(x, y + 1, obj_floor)) {
    on_ground = true;
    vsp = 0;
} else {
    on_ground = false;
}

// Salto
if (keyboard_check_pressed(vk_space) && on_ground) {
    vsp = jump_force;
}
