
object cuentaCorriente{
	var cuenta = 0
	method depositar(importe){cuenta = importe}
	method extraer(importe){cuenta = importe}
	method saldo(){}
	
	
	
}
object cuentaGastos{
	var cuenta = 0
	method depositar(importe){cuenta = importe}
	method extraer(importe){cuenta = importe}
	method saldo(){}
	
}
object cunetaCombinada{
	var property cuentaPrimaria
	var property cuentaSecuandaria
	var cuenta = 0
	method depositar(importe){cuenta = importe}
	method extraer(importe){cuenta = importe}
	method saldo(){
		return cuentaPrimaria.saldo()+ cuentaSecuandaria.saldo()
	}
}
