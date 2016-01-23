//shooty

Bullet = instance_copy(false)

    with (Bullet) {

        instance_change(oBullet,false)    
            
        ScBulletCreate()
    
        speed = other.speed + 5
        
        image_alpha = 1
        
        size = other.size * .5
            
        direction = other.image_angle
        
        if random( 7 ) < 1 { mutate = true } else { mutate = false }
    
    }
size = size * .5
Children += 1
