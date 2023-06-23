/// Draw Event

// Dibujar la ficha en la posición correspondiente de la casilla actual
if(global.carcelR){
	draw_sprite(playerSprites[playerID], 0, 40, 40);
}else{
	if(meta && global.currentTileR < array_length(global.redGoal)){ draw_sprite(playerSprites[playerID], 0, redGoal[global.currentTileR][0], redGoal[global.currentTileR][1]);
	}else if(!meta){ draw_sprite(playerSprites[playerID], 0, casillas[global.currentTileR][0], casillas[global.currentTileR][1]); }
}
// Dibujar el estado de poisicion segura en caso de casilla segura.
if(global.secureR){
	draw_sprite(spr_halo,0,casillas[global.currentTileR][0], casillas[global.currentTileR][1]-10);
}

//Dibujar Contador de Kills
if(global.killsR > 0){
	draw_text(casillas[global.currentTileR][0], casillas[global.currentTileR][1]-20,global.killsR)
}