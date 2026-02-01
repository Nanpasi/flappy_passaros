image_xscale += 0.1;
image_yscale += 0.1;

hspeed = -1;
vspeed = -4;

// lerp() = função mágica; aproxima dois valores
// lerp significa interpolação linear
// É uma função de aproximação
// Ele aproxima um valor de outro em uma porcentagem
image_alpha = lerp(image_alpha, 0, 0.2);

// Estou usando 0.1 ao invés de 0 por causa do lerp
// O lerp é mais suave, então ele demora mais pra chegar em 0
if (image_alpha<=0.1) instance_destroy();

/*
valor1 = 0;
valor2 = 10;
10% - 1
valor1 = 1
valor2 = 10
10% - 0.9
valor1 = 1.9
valor2 = 10
10% - 0.8


*/