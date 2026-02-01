/// @description Spawnando o coletável

// Spawnando o coletável (peixe)
var _posy = random_range(32, 320);

instance_create_layer(672, _posy, "Coletaveis", obj_coletavel);

var _tempo = game_get_speed(gamespeed_fps) * random_range(3, 7);

alarm[2] = _tempo;