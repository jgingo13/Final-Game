/// upgrade_level(upgrade, cost, x, y)

// get variables
var upgrade = argument[0];
var cost = argument[1];
var xx = argument[2];
var yy = argument[3];

// if maxed out
if ((1+upgrade) > 9) {
    draw_text(xx,yy, "Maxed Out");
} 

// if not maxed out
else {
    draw_text(xx,yy, "Cost:  " + string(cost));
}
