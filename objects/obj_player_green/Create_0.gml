/// Create Event
pieces = array_create(4);
for(var i = 0; i < 4; i++){
	pieces[i] = new Piece(-1, global.piece_sprites.green);
}

playerID = 2; 
player = new Player(playerID, pieces);

global.currentTileG = 0;  // Número de casilla actual (0 a 63)
global.carcelG = true;	//Estado de Carcel
global.secureG = false;	//Estado de Casilla Segura
global.killsG = 0;	//Contador Kills
global.cycleG = false;	//Ciclo

// Global to local variables
playerSprites = global.playerSprites; //Sprites de Fichas
casillas = global.casillas; // Array de Casillas (Tablero)