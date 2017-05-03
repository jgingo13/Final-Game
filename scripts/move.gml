/// Move(hspd, vspd)
var hspd = argument[0];
var vspd = argument[1];

var hspd2 = hspd;
var vspd2 = vspd;

var x_lim = abs(hspd);
var y_lim = abs(vspd);

if (instance_exists(obj_player)) {
    if (place_free(obj_player.x+hspd,obj_player.y)) {
        obj_player.x+=hspd * global.DELTA * global.SPD;
    }
    else if (instance_place(obj_player.x+hspd, obj_player.y, invisible_wall) == global.door_id) {
        hit_wall();
    }
    else {
        hspd2 = 0;
        while(place_free(obj_player.x+hspd/abs(hspd), obj_player.y) && x_lim > 0) {
            x_lim--;
            hspd2 += hspd/abs(hspd);
            obj_player.x+= hspd/abs(hspd) * global.DELTA * global.SPD;
            show_debug_message("while move 1b");
        }
    }
    

    if (place_free(obj_player.x,obj_player.y+vspd)) {
        obj_player.y+=vspd * global.DELTA * global.SPD;
    }
    else if (instance_place(obj_player.x, obj_player.y+vspd, invisible_wall) == global.door_id) {
            hit_wall();
    }
    else {
        vspd2 = 0;
        while(place_free(obj_player.x, obj_player.y+vspd/abs(vspd)) && y_lim > 0) {
            y_lim--;
            vspd2 += vspd/abs(vspd);
            obj_player.y+= vspd/abs(vspd) * global.DELTA * global.SPD;
            show_debug_message("while move 2a");
        }
    }
    
}

// move find dia obj
if (instance_exists(obj_locate_dia)) {
    with (obj_locate_dia) {
        // left/right borders -- don't move
        if (instance_exists(obj_player) && obj_player.x < view_wview/2 || obj_player.x > room_width - view_wview/2) {
        }
        else {
            x+=hspd2* global.DELTA * global.SPD;
        }
        
        // top/bottom borders -- don't move
        if (instance_exists(obj_player) && obj_player.y < view_hview/2 || obj_player.y > room_height-view_hview/2) { 
        } 
        else {
            y+=vspd2* global.DELTA * global.SPD;
        }
    }
}

if (view_current == 0) {
    view_xview[1] = view_xview[0];
    view_yview[1] = view_yview[0];
} else {
    view_xview[0] = view_xview[1];
    view_yview[0] = view_yview[1];
}
