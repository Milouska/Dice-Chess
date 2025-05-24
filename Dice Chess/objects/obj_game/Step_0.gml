//global.display_width = display_get_width();
//global.display_height = display_get_height();
/*
if (vertical){
	camera_set_view_angle(view_camera[0],270);
	//view_wport[0] = display_get_width();
	//view_hport[0] = display_get_height();

	//window_set_rectangle(0, 0, _dw, _dh);


	//camera_set_view_size(view_camera[0],global.display_width,global.display_height);
}
*/
if (mouse_check_button_pressed(mb_left) or keyboard_check_pressed(vk_space)){
	if (state != State.MENU or mouse_x < global.display_width-32) and (changing_time = false){
		tap = 1;
		if (tap_cd != 0){
			state = State.MENU;
			player_time[0] = max_time;
			player_time[1] = max_time;
			player_turn = !player_turn;
			tap = 0;
		}else{
			tap_cd = 15;
		}
	}else{
		tap_y = mouse_y;
		time_change = max_time;
		changing_time = true;
	}
}

if (mouse_check_button(mb_left)) and (changing_time){
	max_time = time_change+round((tap_y-mouse_y)/10)*5*60;
	if (max_time < 0) max_time = 0;
	player_time[0] = max_time;
	player_time[1] = max_time;
}

if (mouse_check_button_released(mb_left)) and (changing_time){
	tap_y = -100;
	changing_time = false;
}


switch(state){
	case State.MENU:
		if (tap){
			state = State.PLAYING;
			roll = 1;
			tap = 0;
			line_y = 64;
		}
	break;
	case State.PLAYING:
		player_time[player_turn] --;
		if (player_time[player_turn] <= 0){
			state = State.GAMEOVER;
			player_time[player_turn] = 0;
		}
		if (tap){
			line_y = 64;
			roll = 1;
			player_turn = !player_turn;
			tap = 0;
		}
	break;
	case State.GAMEOVER:
		if (tap){
			state = State.MENU;
			player_time[0] = max_time;
			player_time[1] = max_time;
			player_turn = !player_turn;
			tap = 0;
		}
	break;
}

if (roll){
	roll = 0;
	
	var i = 0;
	repeat(3){
		fig_shake[i] = round(random_range(15,25));
		i ++;
	}
}

var i = 0;
repeat(3){
	if (fig_shake[i] = 1) audio_play_sound(snd_dice,10,0,1,0,random_range(0.8,1.2));
	fig_shake[i] = approach(fig_shake[i],0,1);
	if (fig_shake[i] <= 0) fig_y[i] = approach(fig_y[i],0,2); else fig_y[i] = approach(fig_y[i],12,4);
	i ++;
}

if (state = State.MENU){
	bg_y = lerp(bg_y,-640,0.3);
}else{
	bg_y = lerp(bg_y,-1280*player_turn,0.2);
}
tap_cd = approach(tap_cd,0,1);
line_y = lerp(line_y,266,0.2);