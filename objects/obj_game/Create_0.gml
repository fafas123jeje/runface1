global.world_speed = 6;

// Variables iniciales
score = 0;
game_over = false;
alarm[0] = 60;

// ===============================
// MUSICA (NO duplicar / NO reiniciar)
// ===============================
// Tu sonido real:
global.music_sound = jeje;

// ID del sonido que está sonando (handle)
if (!variable_global_exists("jeje")) global.music_id = -1;

// Asegurar que suene una sola vez
if (global.music_id == -1 || !audio_is_playing(global.music_id)) {
    global.music_id = audio_play_sound(global.music_sound, 1, true);
}