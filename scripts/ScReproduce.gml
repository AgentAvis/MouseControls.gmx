//shooty

Bullet = instance_create(x,y,oBullet)

    with (Bullet) {
    
        speed = other.speed + 5
        
        size = other.size * .5
        
        direction = other.image_angle
    
    }
size = size * .5
Children += 1