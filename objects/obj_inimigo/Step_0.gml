// Parando de se mexer se o jogador perder
if (global.perdeu) hspeed = 0;
// Eu quero que os pássaros sejam mais rápidos que as árvores
else hspeed = -2-global.level;

// Checando se o pássaro saiu da room pelo lado esquerdo
// A instância continua na memória do jogo caso eu não faça isso
// Preciso destruir as instâncias para evitar travamentos
if (x<=-64) instance_destroy();