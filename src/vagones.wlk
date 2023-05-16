class VagonDePasajeros{
	const property largo
	const property ancho
	var property tieneBanio = true
	var property estaOrdenado = false
	
	method capacidadPasajeros()=0.max((if(ancho <= 3)8*largo else 10*largo )-
								if(estaOrdenado)0 else 15)
								
	method cantidadMaximaDeCarga()=if(tieneBanio)300 else 800
	method pesoMaximo()= 2000 + 80* self.capacidadPasajeros() + self.cantidadMaximaDeCarga()
	method hacerMantenimiento(){
		estaOrdenado = true
	}
}

class VagonDeCarga{
	const property cargaMaximaIdeal
	var property maderasSueltas
	method cantidadMaximaDeCarga()= cargaMaximaIdeal - 400*maderasSueltas
	method pesoMaximo()= 1500 + self.cantidadMaximaDeCarga() 
	method capacidadPasajeros()= 0
	method tieneBanio()= false
	method hacerMantenimiento(){
		maderasSueltas = 0.max(maderasSueltas -2)
	}
}

class VagonDormitorio{
	var property compartimentos
	var property camasPorCompartimento
	
	method capacidadPasajeros()= compartimentos * camasPorCompartimento
	method tieneBanio()= true
	method cantidadMaximaDeCarga()= 1200
	method pesoMaximo()= 4000 + 80 * self.capacidadPasajeros() + self.cantidadMaximaDeCarga()
	method hacerMantenimiento(){}
}













