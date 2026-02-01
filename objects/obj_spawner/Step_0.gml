

// aumentar dificultad con el tiempo
global.difficulty += 0.0005; // ajustable

if (global.difficulty > global.max_difficulty) {
    global.difficulty = global.max_difficulty;
}



// ================================
// OBTENER EL PISO
// ================================
var floor_inst = instance_find(obj_floor, 0);
if (floor_inst == noone) exit;

var floor_top = floor_inst.bbox_top;


// ================================
// SPAWN DE OBSTÁCULOS
// ================================
spawn_timer++;

if (spawn_timer >= next_spawn_time) {

    var obs = instance_create_depth(
        room_width + 50,
        0,
        -100,
        choose(
            obj_obstacle,        // tronco
            obj_obstacle_bird    // pájaro
        )
    );

    // --- POSICIONAMIENTO ---
    if (obs.object_index == obj_obstacle) {
        // TRONCO → toca el piso (origin abajo)
        obs.y = floor_top;
    }
    else if (obs.object_index == obj_obstacle_bird) {
        // PÁJARO → vuela
        obs.y = floor_top - obs.fly_offset;
    }

    spawn_timer = 0;

    next_spawn_time = irandom_range(
    room_speed * (1.2 / global.difficulty),
    room_speed * (2.0 / global.difficulty)
);

}


// ================================
// SPAWN DE MÁSCARAS
// ================================
mask_timer++;

if (mask_timer >= mask_spawn_time) {

    var mask_inst = instance_create_depth(
        room_width + 50,
        0,
        -100,
        choose(
            obj_mask_double,
            obj_mask_immune,
            obj_mask_slow
        )
    );

    // máscaras sobre el piso (origin abajo recomendado)
    mask_inst.y = floor_top;

    mask_timer = 0;

    mask_spawn_time = irandom_range(
        room_speed * 10,
        room_speed * 20
    );
}

//transicion fea
	
if (global.transition_active && !instance_exists(obj_transition)) {

    var t = instance_create_depth(
        room_width + 50,
        0,
        -1000,
        obj_transition
    );

    // 👇 CAMBIO IMPORTANTE AQUÍ
    var floor_inst = instance_find(obj_floor, 0);
    if (floor_inst != noone) {
        t.y = floor_inst.bbox_top;
    }

    global.transition_active = false;
}





