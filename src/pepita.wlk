import posiciones.*
import extras.*

object pepita {
	var energia = 100
	var property position = game.origin()
	const destino = nido
	const cazador = silvestre

	method comer(comida) {
		energia = energia + comida.energiaQueOtorga()
	}

	method volar(kms) {
		energia = energia - 10 - kms 
	}
	
	method energia() {
		return energia
	}

	method image() {
	  return "pepita" + self.estado() + ".png"
	}

	method estado() {
	  return if(self.estaEnNido()){
		"-grande"
	  } else if (self.estaAtrapada()){
		"-gris"
	  } else {
		""
	  }
	}	

	method mover(direccion) {
	  position = direccion.siguiente(self.position())
	}

	method estaEnNido() {
		return position == destino.position()
	}

	method estaAtrapada() {
	  return position == cazador.position()
	}

}

