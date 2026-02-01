/// @description Spawnando a árvore

// Randomizando a seed
randomise();

// Criando a variável temporária de posição y
var _posy = random_range(368, 416);

// Criando a minha árvore
// Deve-se colocar as layers entre aspas
instance_create_layer(704, _posy, "Obstaculos", obj_arvore);

// Tempo que vai demorar pra spawnar outra árvore
var _tempo = game_get_speed(gamespeed_fps) * random_range(2, 5);

// Chamando o alarme novamente
// Para escolher apenas números aleatórios inteiros, use irandom_range()
alarm[0] = _tempo;