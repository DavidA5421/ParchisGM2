/// Step Event

// Mover ficha si se lanza el dado
if (playerID == global.currentPlayer && global.dicesResult != 0) {
	isIvailableToMove = true;
	for (var i = 0; i < array_length(player.pieces); i++){
		current_piece = player.pieces[i];
		if (global.isPair && current_piece.state == PIECE_STATE.captured) {
			player.changePieceInGame(i, default_position);
			isIvailableToMove = false;
			break;
		}
	}
	
	// Falta logica para mover todas las fichas
	new_pos = 0;
	if (isIvailableToMove) {
		new_pos += player.pieces[0].pos + global.dicesResult;
		player.pieces[0].set_pos(new_pos mod 68);
	
	}

	global.dicesResult = 0;
 
}
