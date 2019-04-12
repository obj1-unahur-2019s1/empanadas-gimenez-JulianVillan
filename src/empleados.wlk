object galvan {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000
	var deuda = 0
	var dinero = 100
	var sueldo = 15000
	method sueldo() { return sueldo }
	method sueldo(nuevoValor) { sueldo = nuevoValor }
	
	method totalDeuda(){ return deuda }
	
	method totalDinero(){ return dinero }
	
	method gastar(cuanto){
		if (dinero >= cuanto){
			dinero -= cuanto
		} else {
			if (dinero > 0){
				deuda += cuanto - dinero
				dinero = 0
				} else {deuda += cuanto}	
			}
		}
	method cobrarSueldo() {
//		var cuantoDescuento = deuda.min(sueldo)
//		deuda -= cuantoDescuento
//		dinero += sueldo - cuantoDescuento
		if (dueda >= sueldo){
			deuda -= sueldo
			
		}
		else{
			dinero += sueldo - deuda
			deuda = 0
		}
	}
}
object baigorria {
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	var totalCobrado = 0
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
 	method sueldo() { 
		return cantidadEmpanadasVendidas * montoPorEmpanada
	}
	method cobrarSueldo() {
		totalCobrado += self.sueldo()
	}
	method totalCobrado() { return totalCobrado }
}

object gimenez {
	var dinero = 300000
	method dinero() { return dinero }
	method pagarA( empleado ) { 
		dinero -= empleado.sueldo()
		empleado.cobrarSueldo()
	}
}
