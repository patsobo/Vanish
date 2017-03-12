var axe = argument[0];

if (abs(axe.vel_x) >= 0.1 && abs(axe.vel_y) >= 0.1){
    return true;
} else {
    return false;
}

