show_debug_message("destroy enemey");
global.destroy_enemy_p = part_type_create();
part_type_shape(global.destroy_enemy_p,pt_shape_square);
part_type_size(global.destroy_enemy_p,0.05,0.07,0,0.10);
part_type_scale(global.destroy_enemy_p,1,1);
part_type_color2(global.destroy_enemy_p,8421631,255);
part_type_alpha1(global.destroy_enemy_p,1);
part_type_speed(global.destroy_enemy_p,2,4,0,1);
part_type_direction(global.destroy_enemy_p,0,359,0,1);
part_type_gravity(global.destroy_enemy_p,0,270);
part_type_orientation(global.destroy_enemy_p,0,0,0,0,1);
part_type_blend(global.destroy_enemy_p,1);
part_type_life(global.destroy_enemy_p,10,20);

global.destroy_enemy_e = part_emitter_create(global.particle_system);
part_emitter_region(global.particle_system,global.destroy_enemy_e,x,x,y,y,ps_shape_ellipse,1);
part_emitter_burst(global.particle_system,global.destroy_enemy_e,global.destroy_enemy_p,40);


