show_debug_message("blood");
global.blood_p = part_type_create();
part_type_shape(global.blood_p,pt_shape_disk);
part_type_size(global.blood_p,0.10,0.10,0,0);
part_type_scale(global.blood_p,1,1.50);
part_type_color1(global.blood_p,255);
part_type_alpha1(global.blood_p,1);
part_type_speed(global.blood_p,2,4,-0.10,0);
part_type_direction(global.blood_p,0,359,0,0);
part_type_orientation(global.blood_p,0,0,0,1,1);
part_type_blend(global.blood_p,1);
part_type_life(global.blood_p,30,45);

global.blood_e = part_emitter_create(global.particle_system);
part_emitter_region(global.particle_system,global.blood_e,x,x,y,y,ps_shape_ellipse,1);
part_emitter_burst(global.particle_system,global.blood_e,global.blood_p,40);


