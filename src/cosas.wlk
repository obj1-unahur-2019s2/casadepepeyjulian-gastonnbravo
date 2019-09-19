object heladera {
	method precio() { return 20000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object cama {
	method precio() { return 8000 }
	method esComida() { return false }
	method esElectrodomestico() { return false }	
}

object tiraDeAsado {
	method precio() { return 350 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object paqueteDeFideos {
	method precio() { return 50 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object plancha {
	method precio() { return 1200 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object kiloMila {
	var property precio = 260
	
}
object botellaDeSalsa{
	var property precio = 90
}
object microondas{
	method precio(){return 25}
	
}
object packComidas{
	var plato
	var aderezoo
	method configurar(unPlato){
		plato = unPlato
	}
	method agregarAderezo(aderezo){
		aderezoo = aderezo
	}
	method precio(){
		return plato.precio() + aderezoo.precio()
	}
	method esComida() = true
	method esElectro() = false
	
}
object packRegalo{
	var cosas = []
	
	method configurar(componentes){
		cosas.add(componentes)
	}
	method precio(){
		return cosas.sum({comida => comida.precio() }) * 0.8
	}
		method esComida(){
		return cosas.all({compo => compo.esComida()})
		
			
		}
		method esElectro(){
			return cosas.any({compo => compo.esElectro()})
		}
	
}
