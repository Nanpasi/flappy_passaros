/// @description Fazendo ele voar

// SE eu perdi, eu não posso bater a asa
if (global.perdeu) exit;	// Sai do evento se o jogador perdeu


// Eu só quero poder bater a asa SE eu ainda não bati a asa
// Se o image index AINDA NÃO chegou no 1, então eu ainda não bati a asa
// Não vou deixar o GameMaker executar o código caso o image_index não seja 0
// Isso cria um cooldown para o voo
// O exit sai do evento e não lê NENHUM código que vem depois dele
if (image_index>=1) exit;

// Mudando a velocidade vertical para -5 ao apertar espaço
// Isso vai fazer ela subir
vspeed = -5;

// Fazendo a animação começar do segundo frame, para evitar o delay
// O delay acontece porque o frame de idle também está incluso na animação
image_index = 1;

// Fazendo a animação do personagem rodar
image_speed = 1;

// Armando um alarme que vai fazer a animação parar
//alarm[0] = 20;	//frames (1 segundo)