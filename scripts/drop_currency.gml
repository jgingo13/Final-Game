/// drop_currency(x,y)
var xx = argument[0];
var yy = argument[1];

// odds of drop
odds = 5;
if (irandom(odds) == 1) {
    instance_create(xx,yy,obj_currency);
}

