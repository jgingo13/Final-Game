global.currency_p = part_type_create();
part_type_shape(global.currency_p,pt_shape_star);
part_type_size(global.currency_p,0.10,0.10,0,0);
part_type_scale(global.currency_p,1,1);
part_type_color2(global.currency_p,8454143,4227327);
part_type_alpha1(global.currency_p,1);
part_type_speed(global.currency_p,0.50,1,0,0);
part_type_direction(global.currency_p,0,359,0,0);
part_type_gravity(global.currency_p,0,270);
part_type_orientation(global.currency_p,0,0,0,0,1);
part_type_blend(global.currency_p,1);
part_type_life(global.currency_p,60,60);

global.currency_e = part_emitter_create(global.particle_system);
part_emitter_region(global.particle_system,global.currency_e,x,x,y,y,ps_shape_ellipse,1);
part_emitter_burst(global.particle_system,global.currency_e,global.currency_p,25);


