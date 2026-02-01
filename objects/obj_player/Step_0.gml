/*
vspeed += .1;	// Aumenta a velocidade vertical em 0.1 a cada frame

// Limitando a velocidade vertical para 5
if (vspeed>=8) vspeed = 8;
*/

// Se eu perdi, eu vou ir para cima e girar
if (global.perdeu) {
	image_angle += 6;	// Girando a sprite
}
else {	// Eu ainda não perdi o jogo (só faz a checagem se eu ainda não perdi)
	// Checando se o y é maior que a altura da room ou menor que 0 (ou seja, se ele encosta no fundo ou no topo da tela)
	if (y>=room_height||y<=0) gameover();
}
