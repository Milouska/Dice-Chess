draw_set_color(c_white);
draw_set_font(fnt_0);
draw_set_valign(fa_top);
draw_set_halign(fa_right);

//time
var text = "";
var t_minutes = floor(player_time[0]/3600);
var t_seconds = floor((player_time[0]/60)%60);
//var t_ms = floor((player_time[1]/360)%60);
if (t_seconds = 0) t_seconds = "00"
else if (t_seconds < 10) t_seconds = "0" + string(t_seconds);
text = string(t_minutes) + ":" + string(t_seconds);
draw_text_transformed(16,32,text,1,1,90);

text = "";
t_minutes = floor(player_time[1]/3600);
t_seconds = floor((player_time[1]/60)%60);
//t_ms = floor((player_time[1]/360)%60);
if (t_seconds = 0) t_seconds = "00"
else if (t_seconds < 10) t_seconds = "0" + string(t_seconds);
text = string(t_minutes) + ":" + string(t_seconds);
draw_set_halign(fa_left);
draw_text_transformed(16,global.display_height-32,text,1,1,90);



//figs
draw_sprite_ext(spr_figs,fig[0],global.display_width/2,global.display_height/2-64,1,1,90,c_white,1); //top

draw_sprite_ext(spr_figs,fig[1],global.display_width/2,global.display_height/2,1,1,90,c_white,1); //middle

draw_sprite_ext(spr_figs,fig[2],global.display_width/2,global.display_height/2+64,1,1,90,c_white,1); //bottom