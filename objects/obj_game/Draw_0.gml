draw_text(32, 32, "Distancia: " + string(score));


if (game_over) {
    draw_text(room_width/2 - 40, room_height/2, "GAME OVER");
    draw_text(room_width/2 - 80, room_height/2 + 20, "Presiona ESPACIO");
}
