def area_terreno(largo, ancho)
	return largo * ancho
end

def descuento_sueldo(sueldo, tipo_obrero)
	if tipo_obrero == 'o'
		sueldo - (sueldo * 0.12)
	else
		sueldo - (sueldo * 0.15)
	end 
end

def test_area_terreno
    print validate(1000.0, area_terreno(10.00,100.0)) 
    print validate(300.0, area_terreno(30.0,10.0)) 
end

def test_descuento_sueldo
    print validate(88.00, descuento_sueldo(100.0,'o')) 
    print validate(85.00, descuento_sueldo(100.0,'a'))
	print validate(880.00, descuento_sueldo(1000.0,'o'))
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_area_terreno
  test_descuento_sueldo
  puts " "
end

test