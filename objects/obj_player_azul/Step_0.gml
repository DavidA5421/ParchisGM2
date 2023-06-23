/// Step Event

// Mover ficha si se lanza el dado
if (global.carcelA) {
    if (global.diceValue1 > 0 && global.diceValue2 > 0 && global.diceValue1 == global.diceValue2 && global.currentPlayer == playerID) {
        // Salir de la cárcel y poner en la zona de salida
        global.carcelA = false;
        global.currentTileA = 21;
        
        // Reseteo dados
        global.diceValue1 = 0;
        global.diceValue2 = 0;
    }
} else if (global.diceValue1 > 0 && global.diceValue2 > 0 && global.currentPlayer == playerID) {
    // Sumo los dados a la casilla actual
    global.currentTileA = global.currentTileA + global.diceValue1 + global.diceValue2;

	//Validar Zona segura
	for(var i = 0; i < array_length(global.secureTiles); i++){
		if(global.secureTiles[i] == global.currentTileA){
			global.secureA = true;
			break;
		}else{ global.secureA = false;
			}
	}
	
	//Capturar ficha
	for(var i = 0; i < 4; i++){
		if(global.currentTileA == global.globalTiles[i] && global.secureA == false){
			global.currentTileA +=5;
			global.killsA += 1;	
			if(i == 0){ global.carcelR = true;
			}else if(i == 2){ global.carcelG = true;
			}else if(i == 3){ global.carcelY = true;
			}break;
	}
	
    // Rectificar sobre paso de casillas
    if (global.currentTileA > 67) {
        global.currentTileA = global.currentTileA mod 68;
    }
    
    // Reseteo dados
    global.diceValue1 = 0;
    global.diceValue2 = 0;
}
}