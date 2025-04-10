// tomJerryNibbles.wlk
// tomJerryNibbles.wlk
object tom {
    //la referencia apunta a un enetero
    //es un estado del mismo objeto
    var energia = 50
    //cambios sobre su energia

    //parte 2


    //principio de plomorfismo

    //usa obj 
    method comer(unRaton){
        energia = energia + 12 + unRaton.peso()
    } 

    method energia(){
        return energia
    }

    method correr(distancia){
        energia = energia - distancia * 0.5
    }

    method velocidadMax(){
        //consulta
        return 5 + energia * 0.1
    }

    method puedeCazar(unaDistancia){
        //consulta
        //return unaDistancia / 2
        return energia > unaDistancia / 2
    }

    //reutilizamos meth defiidos dentro de tom
    method cazarSiPuede(unRaton,unaDistancia){
        //de indicacion 
        //se llama asi mismo con self
        if(self.puedeCazar(unaDistancia)){
            self.correr(unaDistancia)
            self.comer(unRaton)
        }
    }


}

object jerry {
    var edad = 2 

    //poliformismo
    method peso(){
        return edad * 20
    }

    //setter valor con un nuevo valor
    method cumplirAnios(){
        //lo modifica
        edad = edad + 1
    }

    //sino no hay manera de preguntar
    method edad(){
        return edad
    }
}

object nibbles {
    //sin var ni const
    //caso util se use en otro calcu const
    //no se puede llamar de otra
    //manera


    //poliformismo
  method peso(){
    return 35
  }
}

// Inventar otro ratón