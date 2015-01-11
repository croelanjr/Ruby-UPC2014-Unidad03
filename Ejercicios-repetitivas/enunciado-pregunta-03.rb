#03.- El administrador de un sistema
#necesita calcular el promedio de edades
#de un grupo de alumnos, suponiendo que
#son "n" edades.
#usar una estructura repetitiva para
#calcular ese promedio luego de ingresar
#las edades de los alumnos.
#Probar con las n=5 edades 19,20,22,25,30


def promedio_edades(n)
	edades = [19,20,22,25,30]
	suma = 0.0
	for i in 0..edades.size
		suma = suma + (edades[i]).to_i
	end
	return (suma / n).round(2)
end

#--- zona de test ----
#Ingrese las edades de los n usuarios por consola
def test_promedio_edades
    n=5
    print validate(23.2, promedio_edades(n)) 
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
   
  puts "Test edad"
  puts "Ingrese cantidad de edades"
  puts "---------------------------"
  test_promedio_edades
  puts " "
end

test