#Calcular el area del volumen
def volumen_piscina (largo, ancho, profundidad)
	largo * ancho * profundidad
end

#Saber la edad

def mayor_de_edad(edad)
	if edad >= 18
		true
	else
		false
	end
end

#---- zona de test ----

def test_volumen_piscina
	print validate(10000.0, volumen_piscina(10.0,100.0,10.0))
	print validate(3000.0, volumen_piscina(30.0,10.0,10.0))
end

def test_mayor_de_edad
	print validate(true, mayor_de_edad(18))
	print validate(false, mayor_de_edad(12))
	print validate(true, mayor_de_edad(22))
end

#puts "Ingrese el largo del terreno"
#a = gets.chomp.to_f
#puts "Ingrese el ancho del terreno"
#b = gets.chomp.to_f
#puts "El area es:" + area_terreno(a,b).to_s

def validate (expected, value)
	expected == value ? "." : "F"
end

def test
	puts "Test de prueba del programa"
	puts "***************************"
	test_volumen_piscina
	test_mayor_de_edad
	puts " "
end

test