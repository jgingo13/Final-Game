/// Move(hspd, vspd)
var hspd = argument[0];
var vspd = argument[1];

var x_lim = abs(hspd);
var y_lim = abs(vspd);

if (instance_exists(obj_player)) {
    
    if (place_free(obj_player.x+hspd,obj_player.y)) {
        obj_player.x+=hspd * global.DELTA * global.SPD;
    }
    else {
        while(place_free(obj_player.x+hspd/abs(hspd), obj_player.y) && x_lim > 0) {
            x_lim--;
            obj_player.x+= hspd/abs(hspd) * global.DELTA * global.SPD;
            show_debug_message("while move 1b");
        }
    }
    

    if (place_free(obj_player.x,obj_player.y+vspd)) {
        obj_player.y+=vspd * global.DELTA * global.SPD;
    }
    else {
        while(place_free(obj_player.x, obj_player.y+vspd/abs(vspd)) && y_lim > 0) {
            y_lim--;
            obj_player.y+= vspd/abs(vspd) * global.DELTA * global.SPD;
            show_debug_message("while move 2a");
        }
    }
    
}

// move find dia obj
if (instance_exists(obj_locate_dia)) {
    with (obj_locate_dia) {
        if (instance_exists(obj_player) && obj_player.x < view_wview/2 || obj_player.x > room_width - view_wview/2) {
        
        }else {
            x+=hspd* global.DELTA * global.SPD;
        }
        
        if (instance_exists(obj_player) && obj_player.y < view_hview/2 || obj_player.y > room_height-view_hview/2) {
        
        } else {
            y+=vspd* global.DELTA * global.SPD;
        }
        
        //x = view_xview;
        //y = view_yview;
    }
}
