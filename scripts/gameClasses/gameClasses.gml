enum PIECE_STATE {
	captured = 0,
	in_game = 1,
	out_game = -1,
}

function Player(_playerID, _pieces) constructor {
	playerID = _playerID;
	pieces = _pieces;
	
	function changePieceInGame(idx, pos){
		self.pieces[idx].set_state(PIECE_STATE.in_game);
		self.pieces[idx].set_pos(pos);
	}
	
}


function Piece(_pos, _sprite, _state=PIECE_STATE.captured) constructor {
	pos = _pos;
	sprite = _sprite;
	state = _state;
	
	function set_pos(pos){
		self.pos = pos;
	}
	
	function set_sprite(sprite){
		self.sprite = sprite;
	}
	
	function set_state(state){
		self.state = state;
	}
	
}

function Dice(_sides) constructor {
	side = _sides
	_value = 0;
	
	function calculateResult() {
		_value = irandom_range(1, self.side);
		return self._value
	}
	
	function get_value(){
		return self._value;
	}
	
	function reset(){
		_value = 0;
	}
}
