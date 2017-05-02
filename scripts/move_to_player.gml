/// move_to_player
if (instance_exists(obj_player)) {
    if (point_distance(x, y, obj_player.x, obj_player.y) <= view_wview/2*2) {
        var xx = (obj_player.x div CELL_WIDTH) * CELL_WIDTH + CELL_WIDTH/2;
        var yy = (obj_player.y div CELL_HEIGHT) * CELL_HEIGHT + CELL_HEIGHT/2;
        
        var dir = point_direction(x,y, obj_player.x, obj_player.y);
        var spd = 3;
        
        // dasher
        if (object_get_name(object_index) == "obj_enemy_dasher") {
            spd = 12 * global.DELTA * global.SPD;
            if (place_free(x+lengthdir_x(spd, dir), y) && enemy_collision(lengthdir_x(spd, dir), 0) == false) {
                x+= lengthdir_x(spd, dir);
            }
            if (place_free(x, y + lengthdir_y(spd, dir)) && enemy_collision(0, lengthdir_y(spd,dir)) == false) {
                y+= lengthdir_y(spd, dir);
            }
        }
        
        // tank
        else if (object_get_name(object_index) == "obj_enemy_tank") {
            spd = 3 * global.DELTA * global.SPD;
            if (place_free(x+lengthdir_x(spd, dir), y) && enemy_collision(lengthdir_x(spd, dir), 0) == false) {
                x+= lengthdir_x(spd, dir);
            }
            if (place_free(x, y + lengthdir_y(spd, dir)) && enemy_collision(0, lengthdir_y(spd,dir)) == false) {
                y+= lengthdir_y(spd, dir);
            }
        }
        
        // enemy, shooter
        else {
            spd = 5 * global.DELTA * global.SPD;
            if (place_free(x+lengthdir_x(spd, dir), y) && enemy_collision(lengthdir_x(spd, dir), 0) == false) {
                x+= lengthdir_x(spd, dir);
            }
            if (place_free(x, y + lengthdir_y(spd, dir)) && enemy_collision(0, lengthdir_y(spd,dir)) == false) {
                y+= lengthdir_y(spd, dir);
            }
        }
    }
}
