/// @description Iniciar o objeto level

// Daqui um segundo, eu vou chamar o alarme 0
// Alarme de geração das árvores
alarm[0] = game_get_speed(gamespeed_fps);

// Alarme de geração dos pássaros
alarm[1] = game_get_speed(gamespeed_fps) * 7;

// Alarme de geração do coletável
alarm[2] = game_get_speed(gamespeed_fps) * 5;