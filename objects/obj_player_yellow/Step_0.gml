/// Step Event

// Mover ficha si se lanza el dado}
if(global.carcelY){
	if (global.diceValue1 > 0 && global.diceValue2 > 0 && global.diceValue1 == global.diceValue2 && global.currentPlayer == playerID) {
		//Salir de carcel y poner en zona de salida
		global.carcelY = false;
	    global.currentTileY = 4;
		//Reseteo dados
		global.diceValue1 = 0;
		global.diceValue2 = 0;
	}
}else if(global.diceValue1 > 0 && global.diceValue2 > 0 && global.currentPlayer == playerID){
	//Sumo los dados a la casilla actual
	global.currentTileY = global.currentTileY + global.diceValue1 + global.diceValue2;
	
	//Verificar dobles
	if(global.diceValue1 == global.diceValue2){
		global.repeatTurn = true;
	}
	
	//Validar Zona segura
	for(var i = 0; i < array_length(global.secureTiles); i++){
		if(global.secureTiles[i] == global.currentTileY){
			global.secureY = true;
			break;
		}else{ global.secureY = false;
			}
	}
	
	
	//Capturar ficha
	for(var i = 0; i < 4; i++){
		if(global.currentTileY == global.globalTiles[i] && !global.secureY){
			global.currentTileY +=5;
			global.killsY += 1;	
			if(i == 0){ global.carcelR = true;
			}else if(i == 1){ global.carcelA = true;
			}else if(i == 2){ global.carcelG = true;
			}break;
	}
	}
	
		//Rectificar sobre paso de casillas
	if(global.currentTileY > 67){
		global.currentTileY = global.currentTileY - 68;
	}
	
	
	//Reseteo dados
	global.diceValue1 = 0;
	global.diceValue2 = 0;

}

