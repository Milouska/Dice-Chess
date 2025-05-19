draw_set_color(c_white);

//time
draw_text(global.display_width/2,32,player_time[0]);
draw_text(global.display_width/2,global.display_height-32,player_time[1]);

//figs
draw_sprite(spr_figs,fig[0],global.display_width/2,global.display_height/2-32); //top

draw_sprite(spr_figs,fig[1],global.display_width/2,global.display_height/2); //middle

draw_sprite(spr_figs,fig[2],global.display_width/2,global.display_height/2+32); //bottom