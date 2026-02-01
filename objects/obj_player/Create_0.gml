/// @description Iniciando o player
// Velocidade vertical inical (positivo é para baixo, ele vai cair)

// Isso é uma variável que me poupa todo o trabalho de aumentar a vspeed gradualmente no step
// É uma força que vai aumentando. Ela é uma força cumulativa
gravity = .1;

// Fazendo a animação ficar parada
image_speed = 0;

//show_message(global.lista_pontos[0]);