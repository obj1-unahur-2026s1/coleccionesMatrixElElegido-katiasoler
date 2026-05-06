import pasajeros.*
object nave{
    const property pasajeros = [neo, morfeo, trinity]
    method subirPasajero(unPasajero){
        if (pasajeros.contains(unPasajero)){
            self.error("el pasajero ya esta en la nave")
        } 
        pasajeros.add(unPasajero)
        
    }
    method bajarPasajero(unPasajero){
        if(not pasajeros.contains(unPasajero)){
            self.error("el pasajero no se encuentra en la nave")
        }
        pasajeros.remove(unPasajero)
    }
    method cantidadDePasajeros(){
        return pasajeros.size()
    }
    method pasajeroMayorVitalidad(){
        return pasajeros.max({p => p.vitalidad()})
    }
    method pasajeroMenorVitalidad(){
        return pasajeros.min({p => p.vitalidad()})
    }
    method estaEquilibrada(){
        return self.pasajeroMayorVitalidad().vitalidad() <= self.pasajeroMenorVitalidad().vitalidad() * 2
    }

    method estaElElegido(){
        pasajeros.any({p => p.esElElegido()})
    }
    
    method chocar(){
        pasajeros.forEach({p => p.saltar() p.bajarseDeLaNave()})
    }
    
    method chocarFacil(){
        pasajeros.forEach({p => p.saltar()})
        pasajeros.clear()
    }
    
    method acelerar(){
        self.pasajerosNoElegidos().forEach({p => p.saltar()})
    }
    
    method pasajerosNoElegidos(){
       return pasajeros.filter({p => not p.esElElegido()})
    }

    method vitalidadesDePasajeros(){
        return pasajeros.map({p => p.vitalidad()})
    }
    method pasajerosDeMenorAMayorVitalidad(){
        return pasajeros.sortBy({p1,p2 => p1.vitalidad() < p2.vitalidad()})
    }
    method cualquierPasajero(){
        return pasajeros.anyOne()
    }
}