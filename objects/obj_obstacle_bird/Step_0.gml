// movimiento con el mundo
x -= global.world_speed;

// leve movimiento vertical (vuelo)
y += sin(current_time / 200) * 0.5;

// destruir si sale de pantalla
if (x < -sprite_width) {
    instance_destroy();
}
