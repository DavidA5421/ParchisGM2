/// Step Event

// Cambiar el turno del jugador cuando se presiona click izquierdo
if (keyboard_check_pressed(vk_space)) {
	
	global.isPair = true;
	first_dice = global.dices[0];
	
	for (var i = 1; i < diceNumb; i++){
		current_dice = global.dices[i]
		if (first_dice.calculateResult() != current_dice.calculateResult()) {
			global.isPair = false;
			break;
		}
	}
	
	for (var j = 0; j < diceNumb; j++){
		global.dicesResult += global.dices[j].get_value();
	}
	
    if (!global.isPair) {
        global.currentPlayer = (global.currentPlayer + 1) mod 4;
    }
	
	//Guardar Casillas Actuales de cada Ficha
	//global.globalTiles = [
	//global.currentTileR,
	//global.currentTileA,
	//global.currentTileG,
	//global.currentTileY
	//];
	
}

