//mock create event

        Bimerr = 0
        Children = 0
        //agility is already defined
        Timerr = 0
        slimerr = 0
        sizetimerr = 0
        size = 400
        ID = id
        StringNum = 5
        overide = false
        Loop = 1
        loop = 1
        //color is already defined
        oBullet1 = false
        firstplayer = false
        repeat (6) {
            String = instance_copy(false)
                with (String) {
                    instance_change(oString,true)
                    ID = other.id
                    StringNum = other.StringNum
                    Cre = false
                    First = true
                }
        }
