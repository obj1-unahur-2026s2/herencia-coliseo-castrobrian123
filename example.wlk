object coliseo {
    //espada, daga, hacha //esta son armas
    //casco, escudo //esta son las armaduras

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

class Mirmillon inherits Gladiador(vida = 100, destreza = 15) {

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

    // los gladiadores no puede usar mas de 2 armas en mano



}

class Dimachaeru inherits Gladiador(vida = 100, fuerza = 10) {

    var property arma = []

    method agregarArma(unArma){
        arma.add(unArma)
    }

    method eliminarArma(unArma){
        arma.remove(unArma)
    }

    // los gladiadores no puede usar mas de 2 armas en mano

}

/*



*/

/*

    var property armamento = []

    method agregarParteDeArmadura(unaParteDeArmadura){
        armamento.add(unaParteDeArmadura)
    }

    method EliminarParteDeArmadura(unaParteDeArmadura){
        armamento.remove(unaParteDeArmadura)
    }

*/
