randomize();

global.display_width = 380;
global.display_height = 600;

//vertical = true;

virtual_key_add(0,0,1000,1000,mb_left)

max_time = 3*60*60; //2*60*60
time_change = 0;
changing_time = false;

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
tap_y = -100;
tap_cd = 0;
roll = 0;

var i = 0;
repeat(3){
	fig[i] = 0;
	fig_shake[i] = 0;
	fig_ang[i] = 0;
	fig_len[i] = 0;
	fig_y[i] = 0;
	i ++;
}


bg_y = -640;
line_y = 286;