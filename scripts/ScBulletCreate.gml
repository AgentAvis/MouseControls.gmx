//Mock create event

    Children = 0
    ID = id
    StringNum = 6
    //Agility is already defined
    Loop = 1
    image_alpha = 1
    oBullet1 = true
    overide = false
    
    //color is already defined
    
    Timerr = 0
    
    Focus = false
    
    repeat (ceil(random(3))) {
        StringNum = ceil(random_range(3,6))
        String = instance_copy(false)
            with (String) {
                instance_change(oString,true)
                ID = other.id
                StringNum = other.StringNum
                Cre = false
                First = true
            }
    }

