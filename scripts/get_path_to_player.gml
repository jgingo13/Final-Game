/// get_path_to_player
if (instance_exists(obj_player)) {
    if (point_distance(x, y, obj_player.x, obj_player.y) <= view_wview/2*1.5) {
        var xx = (obj_player.x div CELL_WIDTH) * CELL_WIDTH + CELL_WIDTH/2;
        var yy = (obj_player.y div CELL_HEIGHT) * CELL_HEIGHT + CELL_HEIGHT/2;
        
        if (mp_grid_path(obj_level.grid_path, path, x, y, xx, yy, true)) {
            if (object_get_name(object_index) == "obj_enemy_dasher") {
                path_start(path, 12 * global.DELTA * global.SPD, path_action_stop, false);
            }else if (object_get_name(object_index) == "obj_enemy_tank") {
                path_start(path, 3 * global.DELTA * global.SPD, path_action_stop, false);
            }
            else {
                path_start(path, 4.5 * global.DELTA * global.SPD, path_action_stop, false);
            }
        }
    }
}
