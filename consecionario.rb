def calcularMontoAuto(modelo,version)
	if modelo == "tucson" && version == "basico"
		return 18000
	elsif modelo == "tucson" && vesion == "full"
		return  22000
	elsif modelo == "elantra" && vesion == "basico"
		return  23000
	elsif modelo == "elantra" && vesion == "full"
		return  26000
	elsif modelo == "ilo" && vesion == "basico"
		return 9000
	elsif modelo == "ilo" && vesion == "full"
		return 12000
end
end


def calcularDescuentoAuto(clienteAntiguo)
	if clienteAntiguo == true
		return 0.03
	else
		return 0
	end
end

def obtenerPrecioFinal(modelo, version, clienteAntiguo)
	monto = calcularMontoAuto(modelo,version)
	porcentaje = calcularDescuentoAuto(clienteAntiguo)
	total = monto + (monto * porcentaje)
end


def principal
	precioFinal = obtenerPrecioFinal("tucson","basico",true)
	puts "el precio final es: " + precioFinal.to_s
end

principal