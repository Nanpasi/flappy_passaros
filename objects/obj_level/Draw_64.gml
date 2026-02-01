// Draw GUI desenha na tela do jogo, não no jogo

// Criando uma variável de pontos arredondada
var _pontos = round(global.pontos);

// Definindo a fonte do texto
// Lembrando que isso afeta o JOGO INTEIRO, então resete depois de usar (-1)
draw_set_font(fnt_pontos);

// Desenhando a pontuação do jogador na esquerda da tela
draw_text(20, 20, "PONTUAÇÃO: "+string(_pontos));
// Desenhando o ícone dos coletáveis
draw_sprite_ext(spr_icone_coletavel, 0, 20, 60, 2.5, 2.5, 0, c_white, 1);
// Desenhando a quantidade de coletáveis
draw_text(90, 60, global.peixes);

// Exibindo a pontuação necessária para o level atual
//draw_text(20, 50, global.lista_pontos[global.level-1]);

// Desenhando o level
var _meio = window_get_width() / 2;	// Pega o comprimento da JANELA, não da room
var _index = global.level;
draw_sprite_ext(spr_level, _index, _meio, 20, 3, 3, 0, c_white, 1);
//draw_text(_meio, 20, global.level);

// Resetando a fonte do draw
draw_set_font(-1);