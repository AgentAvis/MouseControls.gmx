if instance_exists(oFood) {

    Hunt = instance_nearest(x,y,oFood) 
    
    if distance_to_object(Hunt) < 100 {
        
        //if abs(speed) < 1.5 { speed = 5 }
        DesDir = point_direction(x,y,Hunt.x,Hunt.y)
        direction = angle_approach(direction,DesDir,.25)
    
    } 
    
}
