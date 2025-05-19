global.display_width = display_get_width();
global.display_height = display_get_height();

player_time[0] = 0;
player_time[1] = 0;

player_turn = 0; //(0,1)

max_time = 2*60*60;

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