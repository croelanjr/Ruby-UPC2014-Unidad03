#encoding:UTF-8
=begin
Una empresa desea sacar la liquidación de cuantas horas tiene que facturar a sus 
clientes. Actualmente cuenta con 1 programador, 1 diseñador y 1 jefe de proyecto 
asignados por cliente.  La tarifa por hora que le cobra es de 22 USD por programador, 
10 USD por diseñador y 25 USD por jefe de proyecto. Adicionalmente, si la cantidad 
de horas facturadas es menor a 100 entonces se debe de cobrar un fee adicional de 200 USD.

Desarrollar un subprograma que permita calcular el monto total a facturar solo por el 
uso de recursos y desarrollar otro subprograma que indique el total a facturar final(tomar en cuenta 
si incluye el fee). (5 puntos)
=end

def liquidacionHoras(horasProgramador, horasDisenador, horasJefe)
	costo_programador = 22
	costo_disenador = 10
	costo_proyecto = 25
	return (horasProgramador * costo_programador) + (horasDisenador * costo_disenador) + (horasJefe * costo_proyecto)
end

def pagoTotal(horasProgramador, horasDisenador, horasJefe)
	cantidad_hora = horasProgramador + horasDisenador + horasJefe
	pago_total = liquidacionHoras(horasProgramador, horasDisenador, horasJefe)
	fee = 200
	if cantidad_hora < 100
		return pago_total + fee
	else
		return pago_total
	end
end

#--- zona de test ----

def test_liquidacionHoras
    print validate(4320, liquidacionHoras(160,30,20))
	print validate(5420, liquidacionHoras(160,90,40))
	print validate(395, liquidacionHoras(10,5,5))
end

def test_pagoTotal
    print validate(4320, pagoTotal(160,30,20)) 
    print validate(5420, pagoTotal(160,90,40)) 
    print validate(595, pagoTotal(10,5,5)) 
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
   
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_liquidacionHoras
  test_pagoTotal
  puts " "
end
test