victim = instance_place(x,y,oBullet)
if instance_exists(victim) {
        if victim.color != color {
            
            with (victim) {instance_destroy()}
            
            ScReproduce2()
            
        }
    }
