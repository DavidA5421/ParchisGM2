/// Create Event

// Variables del juego
global.players = 4;
global.currentPlayer = irandom_range(0, 4);
global.diceValue1 = 0;
global.diceValue2 = 0;
global.repeatTurn = false;
global.globalTiles = [];


// Array de sprites de fichas para cada jugador
global.playerSprites = [
    spr_ficha_roja,
    spr_ficha_azul,
    spr_ficha_green,
    spr_ficha_yellow
];
//Crear matriz para tablero:
instance_create_layer(0, 0,"Controlador",obj_tablero);

// Crear fichas para cada jugador
instance_create_layer(0, 0,"Controlador",obj_player_azul);
instance_create_layer(0, 0,"Controlador",obj_player_red);
instance_create_layer(0, 0,"Controlador",obj_player_green);
instance_create_layer(0, 0,"Controlador",obj_player_yellow);

