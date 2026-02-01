if (keyboard_check_pressed(vk_escape)) {
    room_goto(room_start);
	 with (obj_game) score = 0;
    exit;
}
/////////////////////////////////////////////
if (collision_lock > 0) {
    collision_lock--;
}


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
        sprite_index = SprMASCARA_PERSONAJE2;
        break;

    case "immune":
        sprite_index = SprMONO_MASCARA1;
        break;

    case "slow":
        sprite_index = SprMASCARA_PERSONAJE3;
        fall_speed = 2;
        break;

    default:
        sprite_index = spr_normal;
}

if (keyboard_check(vk_down) && on_ground) {
    image_yscale = 1;
} else {
    image_yscale = 2.5;
}




