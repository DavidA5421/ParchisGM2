/// Create Event

playerID = 3;  // ID del jugador (0 a 3)
global.currentTileY = 0;  // Número de casilla actual (0 a 63)
global.carcelY = true;	//Estado de carcel
global.secureY = false;		//Estado de Seguro
global.killsY = 0;	//Contador Kills
global.cycleY = false;	//Ciclo

// Global to local variables
playerSprites = global.playerSprites; //Sprites de Fichas
casillas = global.casillas; // Array de Casillas (Tablero)