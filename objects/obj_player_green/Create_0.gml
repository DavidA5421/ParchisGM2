/// Create Event

playerID = 2;  // ID del jugador (0 a 3)
global.currentTileG = 0;  // Número de casilla actual (0 a 63)
global.carcelG = true;	//Estado de Carcel
global.secureG = false;	//Estado de Casilla Segura
global.killsG = 0;	//Contador Kills
global.cycleG = false;	//Ciclo

// Global to local variables
playerSprites = global.playerSprites; //Sprites de Fichas
casillas = global.casillas; // Array de Casillas (Tablero)