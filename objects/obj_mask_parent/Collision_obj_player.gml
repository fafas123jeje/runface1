other.mask_type = mask_kind;
other.mask_timer = 0;
other.collision_lock = 5;

if (mask_kind == "immune") {
    other.invincible = true;
}

instance_destroy();
