import cosas.* 

object casaDePepeYJulian {
	const cosas = []
	
	method comprar(cosa){cosas.add(cosa)}
	method cantidadDeCosasCompradas(){cosas.sum({ })}
	method tieneComida(){cosas.filter()}
	method vieneDeEquiparse(){
		return cosas.last().esElectrodomestico() or cosas.last().precio()>5000
	}
	method esDerrochona(){cosas.sum(cosas.precio())}
	method compraMasCara(){return cosas.max()}
	method electrodomesticosComprados(){return cosas}
	method queFaltaComprar(lista){
		return lista.filter({quiero => not cosas.contains(quiero)})
	}
	method faltaComida(){
		cosas.filter({ alimen => alimen.esComida()   } )
	}
	method gastoEnComida(){
		return cosas
		.filter({comida => comida.esComida()})
		.sum({comida => comida.precio()})
		
	}
	method hayElectroBaratos(){ 
		return cosas
		.filter({electro => electro.esElectrodomestico()})
		.any({electro => electro.precio() < 3000})
	}
	method preciosDeEletros(){
		return cosas.filter({
			electro => electro.esElectrodomestico()
		}).map()
		
		
	}
	method primerComida(){
		return cosas
		.filter({comida => comida.esComida()})
		.first()
		
	}
	method nivelEnAumento(){
		return cosas.last()
	}
	
}


