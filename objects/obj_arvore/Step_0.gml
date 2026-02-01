// Checando se o jogo acabou
if (global.perdeu) hspeed = 0;
else hspeed = -1-global.level;

// Checando se a árvore saiu da room pelo lado esquerdo
// A instância continua na memória do jogo caso eu não faça isso
// Preciso destruir as instâncias para evitar travamentos
if (x<=-64) instance_destroy();