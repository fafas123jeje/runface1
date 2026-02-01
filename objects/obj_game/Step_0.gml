if (!game_over) {
    score += 1;
}

if (game_over && keyboard_check_pressed(vk_space)) {
    room_restart();
}

// ACTIVAR TRANSICIÓN
score += 1;

if (score == 1000) {
    global.transition_active = true;
}


