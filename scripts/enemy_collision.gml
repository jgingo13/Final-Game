/// enemy_collision(xspd,yspd)
var xspd = argument[0];
var yspd = argument[1];

if(instance_place(x+xspd,y+yspd,obj_enemy) == "noone") {
    return true;
}

if(instance_place(x+xspd,y+yspd,obj_enemy_shooter) =="noone") {
    return true;
}

if(instance_place(x+xspd,y+yspd,obj_enemy_dasher)=="noone") {
    return true;
}

if(instance_place(x+xspd,y+yspd,obj_enemy_tank) =="noone") {
    return true;
}

return false;
