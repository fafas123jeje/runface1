// Movimiento lateral hacia la izquierda
x -= 4;

// Regenerar el suelo cuando salga de la pantalla
if (x + sprite_width < 0) {
    x += sprite_width * 2; // Lo reposiciona al frente
}