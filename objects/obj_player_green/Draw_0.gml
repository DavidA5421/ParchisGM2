/// Draw Event

// Dibujar la ficha en la posición correspondiente de la casilla actual
if(global.carcelG){
	draw_sprite(playerSprites[playerID], 0, 40, 247);
}else{
	draw_sprite(playerSprites[playerID], 0, casillas[global.currentTileG][0], casillas[global.currentTileG][1]);
}
// Dibujar el estado de poisicion segura en caso de casilla segura.
if(global.secureG){
	draw_sprite(spr_halo,0,casillas[global.currentTileG][0], casillas[global.currentTileG][1]-10);
}

//Dibujar Contador de Kills
if(global.killsG > 0){
	draw_text(casillas[global.currentTileG][0], casillas[global.currentTileG][1]-20,global.killsG)
}
