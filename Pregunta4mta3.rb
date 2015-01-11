=begin
Una concesionaria de autos acaba de finalizar su participación en el motor show. 
Durante el evento realizo varias cotizaciones a distintos clientes. Hoy están volviendo 
a cotizar desde sus locales comerciales regulares. Si el cliente que hoy esta realizando 
una cotización y que haya estado en el motor show tendrá un descuento sobre el auto que 
vaya cotizar dependiendo del modelo del auto. A continuación se muestra la lista de precios 
de los vehículos así como los porcentajes de descuento dependiendo del modelo. Desarrollar 
un programa que permita determinar el precio a pagar por el cliente.
=end

def calcularPrecioBase(modelo, version)
	case modelo
		when "Civic"
			if version == "Basico"
				return 15000.00
			elsif version == "Intermedio"
				return 18000.00
			else
				return 21000.00
			end
		when "Accord"
			if version == "Basico"
				return 19000.00
			elsif version == "Intermedio"
				return 22000.00
			else
			r	eturn 25000.00
			end
		when "Pilot"
			if version == "Basico"
				return 29000.00
			elsif version == "Intermedio"
				return 35000.00
			else
				return 39000.00
			end
	end
end

def calcularDescuento(modelo)
	case modelo
		when "Civic"
		return 0.02
		when "Accord"
		return 0.015
		when "Pilot"
		return 0.01
	end
end

def calcularTotal(modelo, version, motorshow)
	descuento = calcularDescuento(modelo)
	precio = calcularPrecioBase(modelo, version)
	if motorshow == true
	return precio - (precio * descuento)
	else
	return precio
	end
end

#--- zona de test ----

def test_calcularPrecioBase
    print validate(15000.00, calcularPrecioBase("Civic","Basico")) 
	print validate(18000.00, calcularPrecioBase("Civic","Intermedio")) 
	print validate(19000.00, calcularPrecioBase("Accord","Basico")) 
	print validate(22000.00, calcularPrecioBase("Accord","Intermedio")) 
	print validate(39000.00, calcularPrecioBase("Pilot","Full")) 
end

def test_calcularDescuento
    print validate(0.02, calcularDescuento("Civic")) 
	print validate(0.015, calcularDescuento("Accord")) 
	print validate(0.01, calcularDescuento("Pilot")) 
end

def test_calcularTotal
    print validate(14700.00, calcularTotal("Civic","Basico", true)) 
	print validate(19000.00, calcularTotal("Accord","Basico", false)) 
	print validate(29000.00, calcularTotal("Pilot","Basico", false)) 
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
 
  
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_calcularPrecioBase
  test_calcularDescuento
  test_calcularTotal
  puts " "
end
test