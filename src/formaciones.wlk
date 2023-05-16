import vagones.*

class Formacion{
	const property vagones = []
	
	method agregarVagon(unVagon){
		vagones.add(unVagon)
	}
	method quitarVagon(unVagon){
		vagones.remove(unVagon)
	}

	method capacidadPasajeros()= vagones.sum({v => v.capacidadPasajeros()})
	method vagonesPopulares()= vagones.count({v => v.capacidadPasajeros() > 50})
	method esFormacionCarguera()= vagones.all({v => v.cantidadMaximaDeCarga() >= 1000 })
	method vagonMasPesado()= vagones.max({v => v.pesoMaximo()})
	method vagonMasLiviano()= vagones.min({v => v.pesoMaximo()})
	method dispercionDePesos()= self.vagonMasPesado().pesoMaximo() - self.vagonMasLiviano().pesoMaximo()
	method cantidadBanios()= vagones.count({v => v.tieneBanio()})
	method hacerMantenimiento(){
		vagones.forEach({v=> v.hacerMantenimiento()})
	}
	method vagonesConPasajeros()= vagones.filter({v=> v.capacidadPasajeros() > 0})
	method cantidadMayorPasajeros()= self.vagonesConPasajeros().max({v=> v.capacidadPasajeros()}).capacidadPasajeros()
	method cantidadMenorPasajeros()= self.vagonesConPasajeros().min({v=> v.capacidadPasajeros()}).capacidadPasajeros()
	method estaEquilibradaEnPasajeros()= not self.vagonesConPasajeros().isEmpty() and
	 self.cantidadMayorPasajeros() - self.cantidadMenorPasajeros()  <= 20
	method estaOrganizada()=
}