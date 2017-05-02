global.bullets_collide_p = part_type_create();
part_type_shape(global.bullets_collide_p,pt_shape_explosion);
part_type_size(global.bullets_collide_p,0.10,0.10,0,0);
part_type_scale(global.bullets_collide_p,1,1);
part_type_color2(global.bullets_collide_p,16711808,16744448);
part_type_alpha1(global.bullets_collide_p,1);
part_type_speed(global.bullets_collide_p,1,2,0,0);
part_type_direction(global.bullets_collide_p,0,359,0,0);
part_type_gravity(global.bullets_collide_p,0,270);
part_type_orientation(global.bullets_collide_p,0,0,0,0,1);
part_type_blend(global.bullets_collide_p,1);
part_type_life(global.bullets_collide_p,30,60);

global.bullets_collide_e = part_emitter_create(global.particle_system);
part_emitter_region(global.particle_system,global.bullets_collide_e,x,x,y,y,ps_shape_ellipse,1);
part_emitter_burst(global.particle_system,global.bullets_collide_e,global.bullets_collide_p,30);


