/// Draw Event

// Dibujar la ficha en la posición correspondiente de la casilla actual
if(global.carcelA){
	draw_sprite(playerSprites[playerID], 0, 247, 40);
}else{
	draw_sprite(playerSprites[playerID], 0, casillas[global.currentTileA][0], casillas[global.currentTileA][1]);
}
// Dibujar el estado de poisicion segura en caso de casilla segura.
if(global.secureA){
	draw_sprite(spr_halo,0,casillas[global.currentTileA][0], casillas[global.currentTileA][1]-10);
}

//Dibujar Contador de Kills
if(global.killsA > 0){
	draw_text(casillas[global.currentTileA][0], casillas[global.currentTileA][1]-20,global.killsA)
}