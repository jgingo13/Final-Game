/// enemy_collision(xspd,yspd)
var xspd = argument[0];
var yspd = argument[1];

if(instance_place(x+xspd,y+yspd,obj_enemy) != -4) {
    return true;
}

if(instance_place(x+xspd,y+yspd,obj_enemy_shooter) != -4) {
    return true;
}

if(instance_place(x+xspd,y+yspd,obj_enemy_dasher)!= -4) {
    return true;
}

if(instance_place(x+xspd,y+yspd,obj_enemy_tank) != -4) {
    return true;
}

return false;
