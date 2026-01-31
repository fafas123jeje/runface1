// === MOVIMIENTO BASE ===
on_ground = false;
vsp = 0;
jump_force = -17;
fall_speed = 6;


// === MÁSCARAS ===
mask_type = "none"; // none, double, immune, slow
mask_timer = 0;
mask_duration = room_speed * 10; // 10 segundos

// === DOBLE SALTO ===
can_double_jump = false;

// === INMUNIDAD ===
invincible = false;

spr_normal = sprPERSONAJE;
//spr_double = spr_player_double;
//spr_immune = spr_player_immune;
//spr_slow   = spr_player_slow;

sprite_index = spr_normal;

