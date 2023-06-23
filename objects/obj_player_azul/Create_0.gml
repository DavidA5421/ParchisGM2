pieces = array_create(4);
for(var i = 0; i < 4; i++){
	pieces[i] = new Piece(-1, global.piece_sprites.blue);
}
playerID = 1;
player = new Player(playerID, pieces);
default_position = 21;

  // ID del jugador (0 a 3)
global.currentTileA = 0;  // Número de casilla actual (0 a 63)
global.carcelA = true;	//Estado de carcel
global.secureA = false; //Estado seguro
global.killsA = 0;	//Contador Kills
global.cycleA = false;	//Ciclo

// Global to local variables
casillas = global.casillas; // Array de Casillas (Tablero)