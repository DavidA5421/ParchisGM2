/// Create Event

playerID = 0;  // ID del jugador (0 a 3)
global.currentTileR = 0;  // Número de casilla actual (0 a 63)
global.carcelR = true;	//Estado de Carcel
global.secureR = false;	//Estado de Casilla Segura
global.killsR = 0;	//Contador Kills
global.cycleR = false;	//Ciclo
meta = false;	//Casillas Meta
win = false;	//Estado Meta

// Global to local variables
playerSprites = global.playerSprites; //Sprites de Fichas
casillas = global.casillas; // Array de Casillas (Tablero)
redGoal = global.redGoal;	//Array de Casillas (Meta)
