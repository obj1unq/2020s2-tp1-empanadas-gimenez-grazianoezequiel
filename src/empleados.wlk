object galvan{
	var sueldo=0
	
	method cobrarSueldo(monto){sueldo += monto}
	method sueldo(){return sueldo}
}
object baigorria{
	var cantidadDeEmpanadasVendidas=0
	var sueldo=0
	
	method cobrarSueldo(monto){sueldo += monto}
	method vender(cantidad){cantidadDeEmpanadasVendidas += cantidad}
	method cantidadDeEmpanadasVendidas(){return cantidadDeEmpanadasVendidas}
	method sueldo(){return sueldo}
}



