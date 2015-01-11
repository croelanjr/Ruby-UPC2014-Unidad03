#Desarrollar un programa que me permita determinar la cantidad de 
#recubrimiento aislante que se debe poner a planchas metálicas 
#que se van a usar para la construcción de tanques de almacenamiento
#de hidrocarburos. 
#Para ello se debe tomar en cuenta que, dependiendo del área total se
#usa una fórmula diferente debido a la capacidad de recubrimiento. 
#
#En caso el área sea igual o mayor a 7 metros cuadrados se usarán 3 
# galones por metro cuadrado.
#
#En caso el área sea menor a 7 metros cuadrados se usarán 2 galones 
#por metro cuadrado. 
#
#Desarrollar un subprograma que me permita determinar el área de una 
#plancha metálica (rectángular) y un segundo subprograma que me 
#permita determinar la cantidad total de galones a usar en la plancha.

def area(largo, ancho)
	area_total = largo * ancho
	return area_total.round(2)
end

def galones(largo, ancho)
	total_area = area(largo, ancho)
	if total_area < 7
		return (total_area * 2).round(2)
	else
		return (total_area * 3).round(2)
	end
end

#Desarrollar un subprograma que me permita determinar
#el promedio simple de tres notas. 

#Desarrollar un subprograma que, en caso el promedio
#sea igual o mayor a 13 emitirá el mensaje: "Aprobado"
#en caso la nota sea mayor a 13 emitirá el mensaje:
#"Reprobado"

def promedio(nota1, nota2, nota3)
	total = nota1 + nota2 + nota3
	promedio_total = total / 3.0
	return promedio_total.round(2)
end

def resultado(nota1, nota2, nota3)
 	total_promedio = promedio(nota1, nota2, nota3)
 	if 13 <= total_promedio 
 		return 'Aprobado'
 	else
 		return 'Reprobado'
 	end
end

#--- zona de test ----


def test_promedio
    print validate(10.0, promedio(10.0,10.0,10.0))
    print validate(17.0, promedio(15.0,20.0,16.0))    
end

def test_resultado
    print validate("Aprobado", resultado(18,12,15)) 
    print validate("Reprobado", resultado(12,9, 2)) 
end

def test_area
    print validate(100.0, area(10.0,10.0))
    print validate(600.0, area(20.0,30.0))    
end

def test_galones
    print validate(8.0, galones(2.0, 2.0)) 
    print validate(480.0, galones(10.0, 16.0)) 
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
   
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_promedio
  test_resultado
  test_area
  test_galones
  
  puts " "
end
test
