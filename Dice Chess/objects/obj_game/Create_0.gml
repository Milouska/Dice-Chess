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
roll = 1;

fig[0] = 0;
fig[1] = 0;
fig[2] = 0;