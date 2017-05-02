show_debug_message("player death");
global.player_death_p = part_type_create();
part_type_shape(global.player_death_p,pt_shape_smoke);
part_type_size(global.player_death_p,0.30,0.50,0,1);
part_type_scale(global.player_death_p,1,1);
part_type_color2(global.player_death_p,16776960,16711680);
part_type_alpha1(global.player_death_p,1);
part_type_speed(global.player_death_p,2,4,0,2);
part_type_direction(global.player_death_p,0,359,0,1);
part_type_gravity(global.player_death_p,0,270);
part_type_orientation(global.player_death_p,0,0,0,0,1);
part_type_blend(global.player_death_p,1);
part_type_life(global.player_death_p,30,50);

global.player_death_e = part_emitter_create(global.particle_system);
part_emitter_region(global.particle_system,global.player_death_e,x,x,y,y,ps_shape_ellipse,1);
part_emitter_burst(global.particle_system,global.player_death_e,global.player_death_p,50);


