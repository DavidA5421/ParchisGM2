/// Create Event

playerID = 1;  // ID del jugador (0 a 3)
global.currentTileA = 0;  // Número de casilla actual (0 a 63)
global.carcelA = true;	//Estado de carcel
global.secureA = false; //Estado seguro
global.killsA = 0;	//Contador Kills
global.cycleA = false;	//Ciclo

// Global to local variables
playerSprites = global.playerSprites; //Sprites de Fichas
casillas = global.casillas; // Array de Casillas (Tablero)