/// Create Event
pieces = array_create(4);
for(var i = 0; i < 4; i++){
	pieces[i] = new Piece(-1, global.piece_sprites.yellow);
}

playerID = 3; 
player = new Player(playerID, pieces);

global.currentTileY = 0;  // Número de casilla actual (0 a 63)
global.carcelY = true;	//Estado de carcel
global.secureY = false;		//Estado de Seguro
global.killsY = 0;	//Contador Kills
global.cycleY = false;	//Ciclo

// Global to local variables
playerSprites = global.playerSprites; //Sprites de Fichas
casillas = global.casillas; // Array de Casillas (Tablero)