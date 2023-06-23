/// Step Event

// Mover ficha si se lanza el dado}
if(global.carcelR){
	if (global.diceValue1 > 0 && global.diceValue2 > 0 && global.diceValue1 == global.diceValue2 && global.currentPlayer == playerID) {
		
		//Salir de carcel y poner en zona de salida
		global.carcelR = false;
	    global.currentTileR = 38;
		
		//Reseteo dados
		global.diceValue1 = 0;
		global.diceValue2 = 0;
	}
}else if(global.diceValue1 > 0 && global.diceValue2 > 0 && global.currentPlayer == playerID){
	//Sumo dados a casilla actual
	var sum = global.currentTileR + global.diceValue1 + global.diceValue2;
	//Verificando si se llega a casilla meta o si se avanza con normalidad
	if(global.cycleR && sum > 33 && (sum mod 34) < 8 && !meta){
		global.currentTileR = sum mod 34;
		meta = true;
	}else if(meta && sum < 8){ global.currentTileR = sum;}
		else if(!meta){	global.currentTileR = sum;}
	
	//Validar Zona segura
	for(var i = 0; i < array_length(global.secureTiles); i++){
		if(global.secureTiles[i] == global.currentTileR){
			global.secureR = true;
			break;
		}else{ global.secureR = false;
			}
	}

	//Capturar ficha
	for(var i = 0; i < 4; i++){
		if(global.currentTileR == global.globalTiles[i] && !global.secureR){
			global.currentTileR +=5;
			global.killsR += 1;	
			if(i == 1){ global.carcelA = true;
			}else if(i == 2){ global.carcelG = true;
			}else if(i == 3){ global.carcelY = true;
			}break;
	}
	}

	
	//Rectificar sobre paso de casillas
	
	if(global.currentTileR > 67){
		global.currentTileR = global.currentTileR mod 68;
		global.cycleR = true;	
	}
	
	
	//Reseteo dados
	global.diceValue1 = 0;
	global.diceValue2 = 0;
	
	//Verificacion de Win
	if(global.currentTileR == 7 && meta){ win = true;
	}

}