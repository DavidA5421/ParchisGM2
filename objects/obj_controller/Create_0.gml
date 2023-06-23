/// Create Event
global.piece_sprites = {
	red: spr_ficha_roja,
	blue: spr_ficha_azul,
	green: spr_ficha_green,
	yellow: spr_ficha_yellow,
}

// Variables del juego
diceSides = 6;
diceNumb = 2;

dices = array_create(diceNumb);
for (var i = 0; i < diceNumb; i++){
	dices[i] = new Dice(diceSides);
}

global.isPair = undefined;
global.dices = dices;
global.dicesResult = 0;
global.currentPlayer = 0;
global.globalTiles = [];

//Crear matriz para tablero:
instance_create_layer(0, 0,"Controlador",obj_tablero);

// Crear fichas para cada jugador
instance_create_layer(0, 0,"Controlador",obj_player_azul);
//instance_create_layer(0, 0,"Controlador",obj_player_red);
//instance_create_layer(0, 0,"Controlador",obj_player_green);
//instance_create_layer(0, 0,"Controlador",obj_player_yellow);



