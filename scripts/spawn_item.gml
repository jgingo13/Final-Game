/// Spawn item (obj)
var obj = argument[0];

// get random floor tile
while (!instance_exists(obj)) {
    var odds_floor = ds_list_size(floor_list);
    var selected_id = irandom(odds_floor);
    floor_tile = ds_list_find_value(floor_list,selected_id);
    
    if (is_undefined(floor_tile) == false) {
        xx = tile_get_x(floor_tile)+CELL_WIDTH/2;
        yy = tile_get_y(floor_tile)+CELL_HEIGHT/2;
    
        if (point_distance(xx, yy, obj_player.x, obj_player.y) > view_wview[0]/2+50) {
            if (obj == "obj_diamond_loc") {
                if (point_distance(xx, yy, obj_diamond.x, obj_diamond.y) > view_wview[0]/2+50) {
                    instance_create(xx, yy, obj);
                }
            } else {
                instance_create(xx, yy, obj);
            }
        }
    }
    show_debug_message("spawn item");
}
