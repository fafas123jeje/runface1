// [1] Aumentar el puntaje mientras no sea "Game Over"



if (!game_over) {
    score += .5
}

// [2] Reiniciar el juego si es "Game Over" y el jugador presiona ESPACIO
if (game_over && keyboard_check_pressed(vk_space)) {
    room_restart();
}