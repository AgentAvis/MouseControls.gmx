/*

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
*/



var mdist=500,d,Target=noone;
with (oFood) with (other) if (ScCanSee(other.id)) {
    d=distance_to_object(other)
    if (d<mdist) {mdist=d Target=other.id}
}
if (Target && mdist<500) {
    direction=angle_approach(direction,point_direction(x,y,Target.x,Target.y),Agility)
} else if (speed<0.24) speed=0


