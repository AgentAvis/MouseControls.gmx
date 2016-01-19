//mock create event
ID = id
StringNum = 2
FertileTime = random_range(room_speed / 2, room_speed * 10)
Timerrr = 0
TimeAlive = 0
Fetile = false
/*
repeat (1) {
    String = instance_copy(false)
        with (String) {
            instance_change(oString2,true)
            ID = other.id
            StringNum = other.StringNum
            Cre = false
            First = true
        }
}
