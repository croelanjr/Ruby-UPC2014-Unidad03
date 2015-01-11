#encoding: utf-8
def ventas(monto, sueldo)
	salario = sueldo * 4
	comision = 0.09   # comision de 9% de una semana
	costo_comision = monto * comision
	total_comision = costo_comision + sueldo
	puts "El Salario Semanal es S/. #{sueldo} y Mensual es S/. #{salario.round(2)}"
	puts "Su ganancia del vendedor a la semana es S/. #{costo_comision.round(2)}"
	puts "La ganancia total del vendedor por semana es S/. #{total_comision.round(2)}"
end

puts "Por favor ingresar el costo salario por semana"
sueldo = gets.to_f
puts "Por favor ingresar el monto de la venta por semana por el vendedor"
monto = gets.to_f
ventas(monto,sueldo)
