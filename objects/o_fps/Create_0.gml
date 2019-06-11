// Keep our Games FPS capped at 60
if game_get_speed(gamespeed_fps) != 60 {
    game_set_speed(60, gamespeed_fps);
}