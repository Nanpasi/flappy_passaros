#region Variáveis globais
// Variável para saber se o jogador perdeu
global.perdeu = false;

// Criando a variável de pontos
global.pontos = 0;

// Variável do level
global.level = 1;

// Array é uma variável que pode conter vários valores. É como se fosse uma lista
// Lista de pontos para subir de level
global.lista_pontos = [100, 250, 500, 800, 1200, 1800, 2500, 3500, 5000];

// Variável de peixes, que no caso vão ser os coletáveis do jogo
// O jogador vai continuar com os peixes mesmo depois de perder
// Para poder comprar os outros dois pássaros da loja
global.peixes = 0;

#endregion

#region Funções

// Criando a minha função para perder o jogo
function gameover() {
	// Eu só posso perder se eu ainda não perdi
	if (global.perdeu) exit;
	
	// Avisando que eu perdi o jogo
	global.perdeu = true;

	// Avisando que eu tenho que subir
	// Aqui ele só vai rodar uma vez, isso vai fazer ele cair logo depois
	vspeed = -4;
	hspeed = -2;	// Indo pra trás

	// Avisando para TODO MUNDO que eles tem que parar
	// with() controla outro objeto
	//with(all) {
	//	hspeed = 0;
	//}

	// Fazendo o background parar
	layer_hspeed("Arvores", 0);
	layer_hspeed("Reflexo_arvores", 0);
	layer_hspeed("Reflexo_agua", 0);

	// Avisando para o player reiniciar o jogo em 1 segundo
	alarm[0] = game_get_speed(gamespeed_fps);	// Frames	
}

#endregion