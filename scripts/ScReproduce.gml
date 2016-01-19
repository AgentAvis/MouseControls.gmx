//shooty

Bullet = instance_copy(false)

    with (Bullet) {

        instance_change(oBullet,false)    
            
        ScBulletCreate()
    
        speed = other.speed + 5
        
        size = other.size * .5
            
        direction = other.image_angle
    
    }
size = size * .5
Children += 1
