//background
draw_sprite(spr_bg,0,0,bg_y);

draw_set_color(c_white);
draw_set_font(fnt_0);
draw_set_valign(fa_top);
draw_set_halign(fa_right);

//time
var c = c_white;
var text = "";
var t_minutes = floor(player_time[0]/3600);
var t_seconds = floor((player_time[0]/60)%60);
var t_ms = floor((player_time[0]%60)/60*100);
if (t_ms = 0) t_ms = "00";
else if (t_ms < 10) t_ms = "0" + string(t_ms);
//if (t_minutes = 0 and t_seconds < 10) c = c_red;
if (t_seconds = 0) t_seconds = "00"
else if (t_seconds < 10) t_seconds = "0" + string(t_seconds);
text = string(t_minutes) + ":" + string(t_seconds) + "." + string(t_ms);
draw_set_color(c_black);
draw_text_transformed(16+3,32-3,text,1,1,90);
draw_set_color(c);
draw_text_transformed(16,32,text,1,1,90);

c = c_white
text = "";
t_minutes = floor(player_time[1]/3600);
t_seconds = floor((player_time[1]/60)%60);
t_ms = floor((player_time[1]%60)/60*100);
if (t_ms = 0) t_ms = "00";
else if (t_ms < 10) t_ms = "0" + string(t_ms);
//if (t_minutes = 0 and t_seconds < 10) c = c_red;
if (t_seconds = 0) t_seconds = "00"
else if (t_seconds < 10) t_seconds = "0" + string(t_seconds);
text = string(t_minutes) + ":" + string(t_seconds) + "." + string(t_ms);
draw_set_halign(fa_left);
draw_set_color(c_black);
draw_text_transformed(16+3,global.display_height-32-3,text,1,1,90);
draw_set_color(c);
draw_text_transformed(16,global.display_height-32,text,1,1,90);
draw_set_color(c_white);



//figs
var i = 0;
repeat(3){
	if (fig_shake[i]%4 = 0){
		var ang = random_range(-180,180)*fig_shake[i];
		fig_ang[i] = ang;
		
		var len = random_range(0,fig_shake[i]*2);
		var len_max = 48;
		len = clamp(len,0,len_max);
		fig_len[i] = len;
	}

	if ((fig_shake[i]+2)%8 = 0){
		fig[i] = choose(0,1,2,3,4,5);
		if (fig_shake[i] != 0) audio_play_sound(snd_dice,10,0,1,0,random_range(0.8,1.2));
	}
	
	//draw fig
	draw_sprite_ext(spr_figs,fig[i],global.display_width/2+lengthdir_x(fig_len[i],90+fig_ang[i]),global.display_height/2-64+64*i+lengthdir_y(fig_len[i],90+fig_ang[i]),0.5+0.5*(16-fig_len[i])/16,1,90+fig_ang[i]/2,c_white,1);
	
	i ++;
}

draw_set_color(c_black);
draw_line_width(68+3,global.display_height/2+(-1+player_turn*2)*64-3,68+3,global.display_height/2+(-1+player_turn*2)*line_y-3,3);
draw_set_color(c_white);
draw_line_width(68,global.display_height/2+(-1+player_turn*2)*64,68,global.display_height/2+(-1+player_turn*2)*line_y,3);
