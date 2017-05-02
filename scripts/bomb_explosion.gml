global.bomb_explosion_p = part_type_create();
part_type_shape(global.bomb_explosion_p,pt_shape_explosion);
part_type_size(global.bomb_explosion_p,0.30,0.50,.1,0.4);
part_type_scale(global.bomb_explosion_p,1,1);
part_type_color2(global.bomb_explosion_p,16744448,16711808);
part_type_alpha1(global.bomb_explosion_p,1);
part_type_speed(global.bomb_explosion_p,5,7,.1,1);
part_type_direction(global.bomb_explosion_p,0,359,0,0);
part_type_gravity(global.bomb_explosion_p,0,270);
part_type_orientation(global.bomb_explosion_p,0,0,0,0,1);
part_type_blend(global.bomb_explosion_p,1);
part_type_life(global.bomb_explosion_p,45,60);

global.bomb_explosion_e = part_emitter_create(global.particle_system);
part_emitter_region(global.particle_system,global.bomb_explosion_e,x,x,y,y,ps_shape_ellipse,1);
part_emitter_burst(global.particle_system,global.bomb_explosion_e,global.bomb_explosion_p,60);


