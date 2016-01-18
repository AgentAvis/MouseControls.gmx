if global.controls = 1 {
//mouse controls

    DesDir = point_direction( x,y,mouse_x,mouse_y )
    
    //image_angle = angle_approach( image_angle,DesDir,4 )
    image_angle = DesDir
    
    //Swimmy!
    if mouse_check_button(mb_left) {
    
        if Timerr > room_speed * .5 {
            //make me MOVE
            motion_add( image_angle, 3.5 )
            //shrink the light
            //size = size * .9
            audio_play_sound(aSplat2,1,false) 
            Timerr = 0
            //stretch
            image_xscale += .4    
        }
    }

} else {
    //Steering
    if keyboard_check(ord('A')) { image_angle += 4 }
    if keyboard_check(ord('D')) { image_angle -= 4 }
    //Swimmy!
    if keyboard_check(ord('W')) {
    
        if Timerr > room_speed * .5 {
            //make me MOVE
            motion_add( image_angle, 3.5 )
            //shrink the light
            //size = size * .9
            audio_play_sound(aSplat2,1,false) 
            Timerr = 0
            //stretch
            image_xscale += .4    
        }
    }
}
