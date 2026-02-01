// Ganhando pontos o tempo todo
if (!global.perdeu) { 
	global.pontos += 0.1;
	
	// CÓDIGO EXPERIMENTAL
	//if (global.pontos%100==0) global.level = global.pontos/100;
	
	// Preciso fazer essa checagem pra garantir que o index do array global.lista_pontos não passe de 8
	// O jogo crasha caso isso aconteça
	if (global.level<9) {
		// Ganhando level se a pontuação atual for maior ou igual a pontuação equivalente ao level atual
		// da lista de pontos
		
		// Variável temporária que representa os pontos necessários para subir de level
		// Tem o -1 porque o array começa do zero, mas o level começa do 1, portanto a subtração é necessária
		// pros valores ficarem iguais
		var _necessario = global.lista_pontos[global.level-1];
		if (global.pontos>=_necessario) {
			global.level++;	// Subindo de level
			
			layer_hspeed("Arvores", -global.level);
			layer_hspeed("Reflexo,arvores", -global.level);
			layer_hspeed("Reflexo_agua", -global.level/2);
			
			// Código inutilizado feito por mim, substitui pelo código do professor
			// Aumentando a velocidade dos inimigos
			// Estou indo para a esquerda, então tenho que diminuir a velocidade
			//global.vel_inimigos -= 0.5;	// Deixando os inimigos mais rápidos
			
		}
	}
	
	// Mudando a velocidade do background conforme eu subo de level
	//layer_hspeed("Arvores", -global.level);
	//layer_hspeed("Reflexo_arvores", -global.level);
	//layer_hspeed("Reflexo_agua", -global.level/2);
}