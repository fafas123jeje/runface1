
if (place_meeting(x, y + 1, obj_floor)) {

    on_ground = true; // Está en el suelo
    vsp = 0; // Detenemos la velocidad vertical (por si hubiera caídas)
} else {
    // Si no toca el suelo
    on_ground = false; // Está en el aire
    y += 2; 
}