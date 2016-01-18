if instance_exists(oFood) {
    
    
/*   

//Find our food (can i see it?)

Hunt1 = instance_nearest(x,y,oFood)
if ScCanSee(Hunt1) { Target = Hunt1 } else {
    
    Hunt2 = instance_nth_nearest(x,y,oFood,2)

    if ScCanSee(Hunt2)  { Target = Hunt2 } else {
    
        Hunt3 = instance_nth_nearest(x,y,oFood,3)
        
    if ScCanSee(Hunt3) { Target = Hunt3 } else {
    
        Hunt4 = instance_nth_nearest(x,y,oFood,4)
        
    if ScCanSee(Hunt4) { Target = Hunt4 } else {
    
        Hunt5 = instance_nth_nearest(x,y,oFood,5)
    
    if ScCanSee(Hunt5) { Target = Hunt5 } else {
    instance_destroy() Target = 1     
}  }  }    }}
*/

//
//remember to reset stuff here (Loop = 1)
if instance_exists( oFood ) {

Bunt = instance_nth_nearest(x,y,oFood,Loop)

Punt = instance_nearest(x,y,oFood)
if ScCanSee(Punt) and Punt != Bunt { Loop = 0 }

if ScCanSee(Bunt) { Target = Bunt } else { if Loop < instance_number(oFood) {Loop +=1} Target = Punt }

//
    if ScCanSee(Target) {
    if instance_exists(Target) {
    if distance_to_object(Target) < 500 {
        
        //MOVE!
        if place_meeting(x,y,oSolid) {} else {   
            if abs(speed) < 1.5 and Timerr > room_speed * .5{
                speed = 6;
                if image_xscale < 2 { image_xscale += .3}
                audio_play_sound(aSplat2,1,false)
            }
        }
        DesDir = point_direction(x,y,Target.x,Target.y)
        direction = angle_approach(direction,DesDir,5)
    
    } else {
        
        if speed < .24 { speed = 0 } 
    }
}}
}


}
