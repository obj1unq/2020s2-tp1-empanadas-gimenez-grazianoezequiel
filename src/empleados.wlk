object galvan{
	var sueldo=0
	
	method cobrarSueldo(monto){sueldo = monto}
	method sueldo(){return sueldo}
}
object baigorria{
	var cantidadDeEmpanadasVendidas=0
	var sueldo=0
	var ahorros=0
	
	method cobrarSueldo(monto){sueldo = monto ; ahorros += monto ; cantidadDeEmpanadasVendidas=0 }
	method vender(cantidad){cantidadDeEmpanadasVendidas += cantidad}
	method cantidadDeEmpanadasVendidas(){return cantidadDeEmpanadasVendidas}
	method sueldo(){return sueldo}
	method totalCobrado(){ return ahorros  }
}
object gimenez{
	var sueldoDeGalvan=15000
	var fondo=300000
	method cambiarSueldoDeGalvan(sueldoNuevo){sueldoDeGalvan=sueldoNuevo}
	method pagarSueldo(empleado){
		if(empleado.equals(baigorria)){baigorria.cobrarSueldo(15*baigorria.cantidadDeEmpanadasVendidas())}
		if(empleado.equals(galvan)){galvan.cobrarSueldo(sueldoDeGalvan)}
		fondo -= empleado.sueldo()
	}
	method fondo(){
		return fondo
	}
}


