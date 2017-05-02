show_debug_message("level complete");
global.level_complete_p = part_type_create();
part_type_shape(global.level_complete_p,pt_shape_flare);
part_type_size(global.level_complete_p,0.10,0.30,0,0.50);
part_type_scale(global.level_complete_p,1,1);
part_type_color2(global.level_complete_p,4186101,10153468);
part_type_alpha1(global.level_complete_p,1);
part_type_speed(global.level_complete_p,0.05,0.1,0.05,0);
part_type_direction(global.level_complete_p,0,359,0,1);
part_type_gravity(global.level_complete_p,0,270);
part_type_orientation(global.level_complete_p,0,0,0,0,1);
part_type_blend(global.level_complete_p,1);
part_type_life(global.level_complete_p,300,300);

global.level_complete_e = part_emitter_create(global.particle_system);
part_emitter_region(global.particle_system,global.level_complete_e,obj_player.x,obj_player.x,obj_player.y,obj_player.y,ps_shape_ellipse,1);
part_emitter_burst(global.particle_system,global.level_complete_e,global.level_complete_p,50);

