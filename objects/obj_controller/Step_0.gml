/// Step Event

// Cambiar el turno del jugador cuando se presiona click izquierdo
if (keyboard_check_pressed(vk_space)) {
	//Se lanza dados
	global.diceValue1 = irandom_range(1, 6);
    global.diceValue2 = irandom_range(1, 6);
	
		//Verificar dobles
	if(global.diceValue1 == global.diceValue2){
		global.repeatTurn = true;
	}
	
	//Verificar si se repite turno
    if (!global.repeatTurn) {
        global.currentPlayer = (global.currentPlayer + 1) mod global.players;
    }
    global.repeatTurn = false;
	
	//Guardar Casillas Actuales de cada Ficha
	global.globalTiles = [
	global.currentTileR,
	global.currentTileA,
	global.currentTileG,
	global.currentTileY
	];
	
}

