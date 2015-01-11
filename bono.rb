def porcenta_del_bono(ventas)
	if ventas > 5000
		return 0.15
	else
		return 0.10
	end
end

def bono(sueldo, ventas)
	porcentaje = porcenta_del_bono(ventas)
	sueldo_con_bono = sueldo + (sueldo * porcentaje)
end

puts "Ingresa el sueldo del trabajador"
sueldo = gets.to_f
puts "Ingresa el volumen de ventas"
ventas = gets.to_f
puts bono(sueldo, ventas)
