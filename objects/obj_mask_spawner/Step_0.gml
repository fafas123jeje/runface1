spawn_timer++;

if (spawn_timer >= spawn_time) {

    var mask = choose(
        obj_mask_double,
        obj_mask_immune,
        obj_mask_slow
    );

    instance_create_layer(
        room_width + 64,
        floor_y - 64, // ajusta según tu piso
        "Instances",
        mask
    );

    spawn_timer = 0;
}
