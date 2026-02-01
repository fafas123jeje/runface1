// ================================
// HUD DE MÁSCARA ACTIVA
// ================================
if (mask_type != "none") {

    var icon;
    
    switch (mask_type) {
        case "double":
            icon = sprite_mascara_madera;
            break;

        case "immune":
            icon = sprite_mascara_piedra;
            break;

        case "slow":
            icon = sprite_mascara_neptuno;
            break;
    }

    // calcular segundos restantes
    var time_left = ceil((mask_duration - mask_timer) / room_speed);

    // posición en pantalla
    var hud_x = 70;
    var hud_y = 200;

    // dibujar icono
    draw_sprite(icon, 0, hud_x, hud_y);
	
	draw_set_font(fnt_hud);

    // dibujar texto del tiempo
    draw_text(
        hud_x + 40,
        hud_y + 8,
        string(time_left) + " s"
    );
}
