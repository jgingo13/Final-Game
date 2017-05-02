/// cost(upgrade)
var upgrade = argument[0];

if (upgrade == "faster_player") {
    return 1+global.faster_player*1;
}

else if (upgrade == "better_gun") {
    return 3+global.better_gun*2;
}

else if (upgrade == "increase_health") {
    return 5+global.increase_health*3;
} 

else if (upgrade == "cooldown") {
    return 7+global.cooldown*4;
}
