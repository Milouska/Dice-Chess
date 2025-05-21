randomize();

global.display_width = 380;
global.display_height = 640;

//var _ratio = global.display_width / global.display_height;
//var _display_ratio = display_get_width() / display_get_height();
/*
if (_display_ratio < _ratio){
	//global.display_height = 640;
	global.display_width = global.display_height * _display_ratio;
}
*/
max_time = 60*20; //2*60*60

player_time[0] = max_time;
player_time[1] = max_time;

player_turn = 0; //(0,1)

enum State{
	PLAYING,
	MENU,
	GAMEOVER,
}

state = State.MENU;

tap = 0;
tap_cd = 0;
roll = 0;

var i = 0;
repeat(3){
	fig[i] = 0;
	fig_shake[i] = 0;
	fig_ang[i] = 0;
	fig_len[i] = 0;
	i ++;
}


bg_y = 0;
line_y = 286;