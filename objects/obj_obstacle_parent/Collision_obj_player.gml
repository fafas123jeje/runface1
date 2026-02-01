// evitar colisiones falsas por cambio de sprite
if (other.collision_lock > 0) exit;

// evitar matar si es inmune
if (other.invincible) exit;

// GAME OVER
room_goto(room_start);
