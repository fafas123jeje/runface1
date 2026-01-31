// [1] Dibujar el puntaje
draw_text(32, 32, "Puntaje: " + string(score));

// [2] Mostrar mensaje de "Game Over" si el juego termina
if (game_over) {
    draw_text(room_width / 2 - 40, room_height / 2, "GAME OVER");
    draw_text(room_width / 2 - 80, room_height / 2 + 20, "Presiona ESPACIO para reiniciar");
}