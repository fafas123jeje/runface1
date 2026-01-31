// Generar obstáculos dinámicamente (ajusta según tus necesidades)
if (!game_over) {
    instance_create_layer(room_width + 50, 400, "Instances", obj_obstacle); // Crea el obstáculo fuera de la pantalla
    alarm[0] = irandom_range(45, 90); // Reinicia el temporizador con un intervalo aleatorio
}