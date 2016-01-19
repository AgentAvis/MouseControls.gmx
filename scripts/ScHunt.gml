if instance_exists( oFood ) {

    Bunt = instance_nth_nearest(x,y,oFood,Loop)
    
    Punt = instance_nearest(x,y,oFood)
    if ScCanSee(Punt) and Punt != Bunt { Loop = 1 }
    
    if ScCanSee(Bunt) { Target = Bunt } else { if Loop < instance_number(oFood) {Loop +=1} Target = Punt }
    
    //
        if ScCanSee(Target) {
        if instance_exists(Target) {
        if distance_to_object(Target) < 500 {
            
            //MOVE!
            DesDir = point_direction(x,y,Target.x,Target.y)
            direction = angle_approach(direction,DesDir,Agility)
        
        } else {
            
            if speed < .24 { speed = 0 } 
        }
    }}
}



