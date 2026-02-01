x -= global.world_speed;

if (x < -sprite_width) {
    instance_destroy();
}
