// Pasar el tipo de máscara al jugador
other.mask_type = mask_kind;
other.mask_timer = 0;

// Efectos especiales
if (mask_kind == "immune") {
    other.invincible = true;
}

// Destruir la máscara
instance_destroy();
