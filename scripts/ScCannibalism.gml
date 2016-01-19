/*
if instance_exists( oBullet ) {

Bunt = instance_nth_nearest(x,y,oBullet,Loop)

Punt = instance_nearest(x,y,oBullet)
if ScCanSee(Punt) and Punt != Bunt and Punt.color != color { Loop = 1 }

if ScCanSee(Bunt) and Bunt.color != color { Target = Bunt } else {
if Loop < instance_number(oBullet) {Loop +=1} Target = Punt
 }

//
    if ScCanSee(Target) {
    if Target = Bunt {
    if instance_exists(Target) {
    if distance_to_object(Target) < 1000 {
        
        //MOVE!
        if place_meeting(x,y,oSolid) {} else {   
            if abs(speed) < 1.5 and Timerr > room_speed * .5{
                speed = 6;
                if image_xscale < 2 { image_xscale += .3}
                audio_play_sound(aSplat2,1,false)
            }
        }
        DesDir = point_direction(x,y,Target.x,Target.y)
        direction = angle_approach(direction,DesDir,Agility)
    
    } else {
        
        if speed < .24 { speed = 0 } 
    }
}}}

ScEat3()

}
*/
//rewrite

if instance_exists( oBullet ) {

Bunt = instance_nth_nearest(x,y,oBullet,loop)

Punt = instance_nearest(x,y,oBullet)

if ScCanSee(Punt) and Punt.color != color {
    Bunt = Punt
    Target = Bunt
    loop = 1
}

if ScCanSee(Bunt) and Bunt.color != color {
    Target = Bunt
} else {
    if loop < instance_number(oBullet) { loop += 1 } else {loop = 1}
    Target = Punt
}

 if instance_exists(Target) {
     if Target = Bunt {
     
     //is he within range
    
        if distance_to_object(Target) < 1000 and Target.color != color {
            
            
            //MOVE!
            if place_meeting(x,y,oSolid) {} else {   
                if abs(speed) < 1.5 and Timerr > room_speed * .5{
                    speed = 6;
                    if image_xscale < 2 { image_xscale += .3}
                    audio_play_sound(aSplat2,1,false)
                }
            }
            DesDir = point_direction(x,y,Target.x,Target.y)
            direction = angle_approach(direction,DesDir,Agility)
            ScEat3()
        } else {
            
            if speed < .24 { speed = 0 } 
        }
}} 
 
 
 
 
 
 
 



















}
