/// Step Event

// Mover ficha si se lanza el dado}
if(global.carcelG){
	if (global.diceValue1 > 0 && global.diceValue2 > 0 && global.diceValue1 == global.diceValue2 && global.currentPlayer == playerID) {
		//Salir de carcel y poner en zona de salida
		global.carcelG = false;
	    global.currentTileG = 55;
		//Reseteo dados
		global.diceValue1 = 0;
		global.diceValue2 = 0;
	}
}else if(global.diceValue1 > 0 && global.diceValue2 > 0 && global.currentPlayer == playerID){
	//Sumo los dados a la casilla actual
	global.currentTileG = global.currentTileG + global.diceValue1 + global.diceValue2;
	
	//Validar Zona segura
	for(var i = 0; i < array_length(global.secureTiles); i++){
		if(global.secureTiles[i] == global.currentTileG){
			global.secureG = true;
			break;
		}else{ global.secureG = false;
			}
	}
	
	//Capturar ficha
	for(var i = 0; i < 4; i++){
		if(global.currentTileG == global.globalTiles[i] && !global.secureG){
			global.currentTileG +=5;
			global.killsG += 1;	
			if(i == 0){ global.carcelR = true;
			}else if(i == 1){ global.carcelA = true;
			}else if(i == 3){ global.carcelY = true;
			}break;
	}
	}	
	
	//Rectificar sobre paso de casillas
	if(global.currentTileG > 67){
		global.currentTileG = global.currentTileG mod 68;
	}
	
	//Reseteo dados
	global.diceValue1 = 0;
	global.diceValue2 = 0;

}