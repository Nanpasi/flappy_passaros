/// @description Spawnando o pássaro

// Randomizando a seed
randomise();

// Variável temporária da posição y dos pássaros
var _posy = random_range(48, (room_height/2)-8);

// Spawnando o pássaro
instance_create_layer(688, _posy, "Obstaculos", obj_inimigo);

// Tempo que vai demorar pro pássaro spawnar de novo
var _tempo = game_get_speed(gamespeed_fps) * random_range(4, 7);

// Resetando o alarme 1
// Número aleatório entre 4 e 7 segundos
alarm[1] = _tempo;