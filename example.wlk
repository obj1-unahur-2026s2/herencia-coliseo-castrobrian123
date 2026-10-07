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

class Mirmillon inherits Gladiador(vida = 100, fuerza = 0, destreza = 15) {

    var property arma

    method cambiarArma(nuevaArma){
        arma = nuevaArma
    }

    method filoDeArma() = self.arma().filo()

    method longitudDeArmaDeFilo() = self.arma().between(0,1)




    // los gladiadores no puede usar mas de 2 armas en mano



}

class Dimachaeru inherits Gladiador {

    //var property armamento = []

    //method filoDel_(unArma) = unArma.filo()

    //method longitudDeArmaDeFilo(unArma) = unArma.between(0,1)

    //method sonBrutos() = armamento.contains([mazo,martillo])

    // los gladiadores no puede usar mas de 2 armas en mano

}

/*

    method agregarArma(unArma){
        armamento.add(unArma)
    }

    method eliminarArma(unArma){
        armamento.remove(unArma)
    }

*/
