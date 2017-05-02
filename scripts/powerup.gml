global.powerup_p = part_type_create();
part_type_shape(global.powerup_p,pt_shape_pixel);
part_type_size(global.powerup_p,2,4,0,0);
part_type_scale(global.powerup_p,1,1);
part_type_color2(global.powerup_p,8454143,4227327);
part_type_alpha1(global.powerup_p,1);
part_type_speed(global.powerup_p,5,8,0,0);
part_type_direction(global.powerup_p,90,9,0,0);
part_type_gravity(global.powerup_p,0,270);
part_type_orientation(global.powerup_p,0,0,0,0,1);
part_type_blend(global.powerup_p,1);
part_type_life(global.powerup_p,5,15);

global.powerup_e = part_emitter_create(global.part_sys_powerup);
part_emitter_region(global.part_sys_powerup,global.powerup_e,-50,50,0,-20,ps_shape_ellipse,1);
part_emitter_stream(global.part_sys_powerup,global.powerup_e,global.powerup_p,4);



