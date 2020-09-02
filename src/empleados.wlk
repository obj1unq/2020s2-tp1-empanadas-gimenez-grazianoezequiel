object galvan{
	var sueldo=0
	var dinero=0
	var deuda=0
	method sueldo(monto){sueldo = monto; dinero += 0.max(monto-deuda);deuda= 0.max(deuda - monto) }
	method sueldo(){return sueldo}
	method gastar(gastos){ deuda += gastos; deuda = 0.max(deuda - dinero); dinero= 0.max(dinero - gastos)}
	method dinero(){return dinero}
	method deuda(){return deuda}
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
		if(empleado.equals(galvan)){galvan.sueldo(sueldoDeGalvan)}
		fondo -= empleado.sueldo()
	}
	method fondo(){
		return fondo
	}
}


