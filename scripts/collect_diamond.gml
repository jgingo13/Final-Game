global.collect_diamond_p = part_type_create();
part_type_shape(global.collect_diamond_p,pt_shape_pixel);
part_type_size(global.collect_diamond_p,0.50,0.70,0,0.10);
part_type_scale(global.collect_diamond_p,3,3);
part_type_color2(global.collect_diamond_p,8454016,16777088);
part_type_alpha1(global.collect_diamond_p,1);
part_type_speed(global.collect_diamond_p,3,5,0,1);
part_type_direction(global.collect_diamond_p,0,359,0,1);
part_type_gravity(global.collect_diamond_p,0,270);
part_type_orientation(global.collect_diamond_p,0,0,0,0,1);
part_type_blend(global.collect_diamond_p,1);
part_type_life(global.collect_diamond_p,30,60);

global.collect_diamond_e = part_emitter_create(global.particle_system);
part_emitter_region(global.particle_system,global.collect_diamond_e,x,x,y,y,ps_shape_ellipse,1);
part_emitter_burst(global.particle_system,global.collect_diamond_e,global.collect_diamond_p,40);
part_emitter_burst(global.particle_system,global.collect_diamond_e,global.collect_diamond_p,40);
part_emitter_burst(global.particle_system,global.collect_diamond_e,global.collect_diamond_p,40);
part_emitter_burst(global.particle_system,global.collect_diamond_e,global.collect_diamond_p,40);

