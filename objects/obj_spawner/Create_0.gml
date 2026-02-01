// ===== OBSTÁCULOS =====
spawn_timer = 0;
next_spawn_time = irandom_range(
    room_speed * 1,
    room_speed * 3
);

// ===== MÁSCARAS =====
mask_timer = 0;
mask_spawn_time = irandom_range(
    room_speed * 5,
    room_speed * 8
);


global.difficulty = 0.5;
global.max_difficulty = 5;
global.world_speed = 6;




