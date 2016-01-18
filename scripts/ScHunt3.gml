if instance_exists(oFood) {

    Hunt = instance_nearest(x,y,oPlayerParent) 
    
    if distance_to_object(Hunt) < 500 {
        
        if abs(speed) < 1.5 { speed = 5; }
        DesDir = point_direction(x,y,Hunt.x,Hunt.y)
        direction = angle_approach(direction,DesDir,5)
        
        if place_meeting(x,y,Hunt) { with ( Hunt ) { instance_destroy() } }
        
        
        
    } else { if speed < .24 { speed = 0 } }
    
}
