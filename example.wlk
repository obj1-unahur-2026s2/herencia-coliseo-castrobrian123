class Arma{
    method valorDeAtaque()
}

class ArmaDeFilo inherits Arma{
    const filo //un valor entre 0 y 1
    const longitud

    override method valorDeAtaque() = filo * longitud
}

class Contundente inherits Arma{
    const peso

    override method valorDeAtaque() = peso
}

object casco{
    method valorArmadura(gladiador) = 10
}

object escudo{
    method valorArmadura(gladiador)= 5 + gladiador.destreza() * 0.1 
}

class Gladiador{
    var vida = 100

    method vida() = vida

    method atacar(atacado){
        atacado.recibirDaño(self)
    }

    method recibirDaño(atacante){
        vida = vida - (atacante.poderDeAtaque() - self.defensa())
    }

    method pelearCon(gladiador){
        self.atacar(gladiador)
        gladiador.atacar(self)
    }

    method defensa()
}

class Mirmillon inherits Gladiador{
    var arma
    var armadura
    var property fuerza


  method destreza() = 15

    method cambiarArmadura(otraArmadura){
        armadura = otraArmadura
    }

  method poderDeAtaque() = fuerza + arma.valorDeAtaque()

  override method defensa() = armadura.valorArmadura(self) + self.destreza()

    method crearGrupoCon(gladiador){
        return
            new Grupo(
                nombre="Mirmillolandia",
                miembros=[self,gladiador]
            )
    }
}

class Dimachareus inherits Gladiador{
    const armas = []
    var destreza

    override method atacar(atacado){
        super(atacado) //le introducimos la variable dentro de super ya que el metodo atacar de la clase Gladiador posee variable
        destreza += 1
    }

    method fuerza() = 10

    method poderDeAtaque() = self.fuerza() + armas.sum({a => a.valorDeAtaque()})

    override method defensa() = destreza / 2

    method crearGrupoCon(gladiador){
        const fuerzaGrupo = self.poderDeAtaque() + gladiador.poderDeAtaque()
        return
            new Grupo(
                nombre="D-" + fuerzaGrupo,
                miembros=[self,gladiador]
            )
    }

}

class Grupo{
    const nombre
    var peleas = 0
    const miembros = []

    method agregarMiembro(gladiador){
        miembros.add(gladiador)
    }

    method quitarMiembro(gladiador){
        miembros.remove(gladiador)
    }

    method vivos() = miembros.filter({g => g.vida() > 0})
    method campeon() = self.vivos().max({g => g.fuerza()})


}
