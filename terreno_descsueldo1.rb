#Calcular el area del terreno
def area_terreno(largo, ancho)
	largo * ancho
end

#Calcular sueldo del obrero

def descuento_sueldo(sueldo, tipo_obrero)
	if tipo_obrero == 'o'
		sueldo - (sueldo * 0.12) #OCURRE A
	else
		sueldo - (sueldo * 0.15) #OCURRE B
	end
end

#---- zona de test ----

def test_area_terreno
	print validate(1000.0, area_terreno(10.0,100.0))
	print validate(300.0, area_terreno(30.0,10.0))
end

def test_descuento_sueldo
	print validate(88.00, descuento_sueldo(100.0,'o'))
	print validate(85.00, descuento_sueldo(100.0,'a'))
	print validate(880.0, descuento_sueldo(1000.0,'o'))
end

puts "Ingrese el largo del terreno"
a = gets.chomp.to_f
puts "Ingrese el ancho del terreno"
b = gets.chomp.to_f
puts "El area es:" + area_terreno(a,b).to_s

def validate (expected, value)
	expected == value ? "." : "F"
end

def test
	puts "Test de prueba del programa"
	puts "***************************"
	test_area_terreno
	test_descuento_sueldo
	puts " "
end

test
