/// Draw Event

// Mostrar información del juego en la pantalla
draw_set_color(c_black);
draw_text(10, 10, "Turno del Jugador: " + string(global.currentPlayer+1));
draw_text(10, 30, "Valor del dado 1: " + string(global.diceValue1));
draw_text(10, 50, "Valor del dado 2: " + string(global.diceValue2));