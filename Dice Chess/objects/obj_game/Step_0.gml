//global.display_width = display_get_width();
//global.display_height = display_get_height();



if (mouse_check_button_pressed(mb_left)) tap = 1;


switch(state){
	case State.MENU:
		if (tap){
			state = State.PLAYING;
			fig[0] = choose(0,1,2,3,4,5);
			fig[1] = choose(0,1,2,3,4,5);
			fig[2] = choose(0,1,2,3,4,5);
			tap = 0;
		}
	break;
	case State.PLAYING:
		player_time[player_turn] --;
		if (player_time[player_turn] <= 0){
			state = State.GAMEOVER;
			player_time[player_turn] = 0;
		}
		if (tap){
			fig[0] = choose(0,1,2,3,4,5);
			fig[1] = choose(0,1,2,3,4,5);
			fig[2] = choose(0,1,2,3,4,5);
			player_turn = !player_turn;
			tap = 0;
		}
	break;
	case State.GAMEOVER:
		if (tap){
			state = State.PLAYING;
			player_time[0] = max_time;
			player_time[1] = max_time;
			player_turn = !player_turn;
			fig[0] = choose(0,1,2,3,4,5);
			fig[1] = choose(0,1,2,3,4,5);
			fig[2] = choose(0,1,2,3,4,5);
			tap = 0;
		}
	break;
}