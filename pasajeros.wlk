import nave.*
object neo {
    var energia = 100
    method esElElegido(){
        return true
    }
    method saltar(){
        energia = energia * 0.5 
    }
    method vitalidad(){
        return energia / 10
    }
    method subirseALaNave(){
        nave.subirPasajero(self)
    }
    method bajarseDeLaNave(){
        nave.bajarPasajero(self)
    }
}
object morfeo{
    var vitalidad = 8
    var estaCansado = false
    method esElElegido(){
        return false
    }
    method saltar(){
        estaCansado = !estaCansado
        vitalidad = 0.max(vitalidad - 1)
    }
    method vitalidad(){
        return vitalidad
    }
    method subirseALaNave(){
        nave.subirPasajero(self)
    }
    method bajarseDeLaNave(){
        nave.bajarPasajero(self)
    }
}
object trinity{
    method esElElegido(){
        return false
    }
    method vitalidad(){
        return 0
    }
    method saltar(){
    }
    method subirseALaNave(){
        nave.subirPasajero(self)
    }
    method bajarseDeLaNave(){
        nave.bajarPasajero(self)
    }
}