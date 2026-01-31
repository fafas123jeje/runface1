if (place_meeting(x, y + 1, obj_floor)) {
    on_ground = true;
    vsp = 0;
} else {
    on_ground = false;
}

// 2. Salto
if (keyboard_check_pressed(vk_space) && on_ground) {
    vsp = jump_force;
}

// 3. Movimiento hacia arriba (salto)
if (vsp < 0) {
    y += vsp;
    vsp += 1; // frena el salto poco a poco
}

// 4. Caída controlada
if (!on_ground && vsp >= 0) {
    y += fall_speed;
}


// === TEMPORIZADOR DE MÁSCARA ===
if (mask_type != "none") {
    mask_timer++;

    if (mask_timer >= mask_duration) {
        mask_type = "none";
        mask_timer = 0;
        invincible = false;
    }
}


switch (mask_type) {
    case "double":	
        sprite_index = spr_double;
        break;

    case "immune":
        sprite_index = spr_immune;
        break;

    case "slow":
        sprite_index = spr_slow;
        break;

    default:
        sprite_index = spr_normal;
}