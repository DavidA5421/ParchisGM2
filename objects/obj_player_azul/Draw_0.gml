/// Draw Event
// Dibujar la ficha en la posición correspondiente de la casilla actual



for (var i = 0; i < array_length(player.pieces); i++){
	pieceState = player.pieces[i].state;
	show_debug_message(pieceState);
	switch (pieceState) {
		case PIECE_STATE.captured: draw_sprite(player.pieces[i].sprite, 0, 225 + (i * 20), 40); break;
		case PIECE_STATE.in_game: draw_sprite(player.pieces[i].sprite, 0, casillas[player.pieces[i].pos][0], casillas[player.pieces[i].pos][1]); break;
		default: break;
	}
}

// Dibujar el estado de poisicion segura en caso de casilla segura.
//if(global.secureA){
//	draw_sprite(spr_halo,0,casillas[global.currentTileA][0], casillas[global.currentTileA][1]-10);
//}

//Dibujar Contador de Kills
//if(global.killsA > 0){
//	draw_text(casillas[global.currentTileA][0], casillas[global.currentTileA][1]-20,global.killsA)
//}