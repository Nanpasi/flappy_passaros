// Aumentando a quantidade de coletáveis do player
global.peixes++;

// Quando você está em um evento de colisão
// A instância com quem você colidiu fica salva na palavra "other"

//other.hspeed = 0;
//other.vspeed = -2;
//other.image_xscale = -1.12;
//other.image_yscale = 1.12;

// Se destruindo
instance_destroy(other);	// Destruindo a instância do objeto que colidiu com o player