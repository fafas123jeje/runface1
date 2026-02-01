x -= global.world_speed * global.difficulty;


if (x < -sprite_width) {
    instance_destroy();
}
