/// Draw Event

// Dibujar la ficha en la posición correspondiente de la casilla actual
if(global.carcelY){
	draw_sprite(playerSprites[playerID], 0, 247, 247); 
}else{
	draw_sprite(playerSprites[playerID], 0, casillas[global.currentTileY][0], casillas[global.currentTileY][1]);
}
// Dibujar el estado de poisicion segura en caso de casilla segura.
if(global.secureY){
	draw_sprite(spr_halo,0,casillas[global.currentTileY][0], casillas[global.currentTileY][1]-10);
}

//Dibujar Contador de Kills
if(global.killsY > 0){
	draw_text(casillas[global.currentTileY][0], casillas[global.currentTileY][1]-20,global.killsY)
}