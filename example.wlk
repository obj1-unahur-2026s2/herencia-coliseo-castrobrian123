object coliseo {
    //espada, daga, hacha //esta son armas
    //casco, escudo //esta son las armaduras

    var property guerreros = []

    method agregarGladiador(unGladiador){
        guerreros.add(unGladiador)
    }

    method quitarGladiador(unGladiador){
        guerreros.remove(unGladiador)
    }

    /*
    method comenzarPelea(){

    }

    */

    //var property ligaDeGladiador = [new Mirmillon(), new Dimachaeru]


}

class Gladiador {

    var property vida

    var property fuerza

    var property destreza

    //method atacar()

    //method defenderse()

}

class Mirmillon inherits Gladiador(vida = 100, fuerza = 0, destreza = 15) {

    var property arma

    method cambiarArma(nuevaArma){
        arma = nuevaArma
    }

    method filoDeArma() = self.arma().filo()

    method longitudDeArmaDeFilo() = (self.arma()).min(1)

    method cambiarFuerza(nuevaFuerza){
        fuerza = nuevaFuerza
    }

    var property armadura

    method cambiarArmadura(nuevaArmadura){
        armadura = nuevaArmadura
    }

}

class Dimachaeru inherits Gladiador(vida = 100, fuerza = 10, destreza = 0) {

    var property arma = []

    method agregarArma(unArma){
        arma.add(unArma)
    }

    method eliminarArma(unArma){
        arma.remove(unArma)
    }

}

/*
//version del profe


class Arma {
    method valorDeAtaque()
}

class ArmaDeFilo inherits Arma {

    const filo //un valor entre 0 y 1

    const longitud

    override method valorDeAtaque() = filo * longitud //todas las armas llevan valorDeAtaque()

}


class contundente inherits Arma {

    const peso

    override method valorDeAtaque() = peso //todas las armas llevan valorDeAtaque()


}

class casco {
    method armadura() = 10
}

class escudo{
    method armadura(gladiador) = 5 + gladiador.destreza()
}

class Gladiador {
    var vida = 100

    //method atacar()
    //method defenderse()
}

class Mirmillon inherits Gladiador{
    var arma

    var armadura
}
*/
