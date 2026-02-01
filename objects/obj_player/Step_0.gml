// ===== DETECTAR SUELO =====
if (place_meeting(x, y + 1, obj_floor)) {
    on_ground = true;
    vsp = 0;
    can_double_jump = (mask_type == "double");
} else {
    on_ground = false;
}

// ===== SALTO =====
if (keyboard_check_pressed(vk_space)) {

    if (on_ground) {
        vsp = jump_force;
    }
    else if (mask_type == "double" && can_double_jump) {
        vsp = jump_force;
        can_double_jump = false;
    }
}

// ===== SUBIDA =====
if (vsp < 0) {
    y += vsp;
    vsp += 1;
}

// ===== CAÍDA =====
if (!on_ground && vsp >= 0) {
    y += fall_speed;
}

// ===== TEMPORIZADOR DE MÁSCARA =====
if (mask_type != "none") {
    mask_timer++;

    if (mask_timer >= mask_duration) {
        mask_type = "none";
        mask_timer = 0;
        invincible = false;
        fall_speed = 6;
    }
}

// ===== EFECTOS DE MÁSCARA =====
switch (mask_type) {

    case "double":
        sprite_index = spr_double;
        break;

    case "immune":
        sprite_index = spr_immune;
        break;

    case "slow":
        sprite_index = spr_slow;
        fall_speed = 2;
        break;

    default:
        sprite_index = spr_normal;
}
