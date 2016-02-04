// Hunt Players

var mdist=500,d,Target=noone;
with (oPlayerParent) with (other) if (ScCanSee(other.id)) {
    d=distance_to_object(other)
    if (d<mdist) {mdist=d Target=other.id}
}
if (Target && mdist<500) {
    direction=angle_approach(direction,point_direction(x,y,Target.x,Target.y),Agility)
} else if (speed<0.24) speed=0

/*
if instance_exists(oPlayerParent) {

    Hunt = instance_nearest(x,y,oPlayerParent) 
    
    if distance_to_object(Hunt) < 500 {
        
        if abs(speed) < 1.5 { speed = 5; }
        DesDir = point_direction(x,y,Hunt.x,Hunt.y)
        direction = angle_approach(direction,DesDir,5)
        
        if place_meeting(x,y,Hunt) { with ( Hunt ) { instance_destroy() } }
        
        
        
    } else { if speed < .24 { speed = 0 } }
    
}
*/

