vari = random_range(-40,40)
X = x + lengthdir_x(sight, image_angle + vari)
Y = y + lengthdir_y(sight, image_angle + vari)

if global.debug = true {
        draw_set_color(color)
        draw_line(x,y,X,Y)
    }
     
if collision_line(x,y,X,Y,oSolid,false,true) {
    if dir = 1 {
    direction += Agility * 4 } else { direction -= Agility * 4 }
}


