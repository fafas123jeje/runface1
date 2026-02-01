// Posición aleatoria en el eje X (dentro de la room)
var pos_x = irandom(room_width); // De 0 al ancho de la room

// Generar encima del suelo (altura fija para Y)
var pos_y = room_height - 786; // Suponiendo que el suelo está a 64px del borde inferior (ajusta si necesario)

// Crear el objeto en esas coordenadas
instance_create_layer(pos_x, pos_y, "Instances", obj_mask_immune);