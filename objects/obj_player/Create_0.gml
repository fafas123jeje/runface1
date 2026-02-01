// === MOVIMIENTO BASE ===
on_ground = false;
vsp = 0;
jump_force = -22;
fall_speed = 12;


// === MÁSCARAS ===
mask_type = "none"; // none, double, immune, slow
mask_timer = 0;
mask_duration = room_speed * 5; // 10 segundos

// === DOBLE SALTO ===
can_double_jump = false;

// === INMUNIDAD ===
invincible = false;

spr_normal = sprPERSONAJE;
spr_double = SprMASCARA_PERSONAJE2;
spr_immune = SprMONO_MASCARA1;
spr_slow   = SprMASCARA_PERSONAJE3;

sprite_index = spr_normal;

collision_lock = 0;

