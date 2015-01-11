#encoding:UTF-8
=begin
Una empresa desea calcular los puntos de bonificación para los alumnos de la maestría en la nota final. 

Para ello el alumno tiene una nota base que es el cálculo de tres de sus notas

Un examen parcial que tiene peso 2
Una promedio de prácticas que tiene peso 1
Un examen final que tiene peso 3

El promedio final se calcula de la siguiente manera

PF = (PP * 1 + EP * 2 + EF *3 )/6

Luego se requiere aplicar la bonificación que va del siguiente modo

Los alumnos que han tenido una participación de calificación A reciben 10% de bonificación sobre su nota, los alumnos que tienen B 8% 
y los alumnos que tienen C 6%  (trabajar todo con 2 decimales)
=end
	
end

def calcularPromedio(pp, ep, ef)
	p1 = pp * 1
	p2 = ep * 2
	p3 = ef * 3
	return ((p1.to_f + p2.to_f + p3.to_f) / 6).round(2)
end

def calcularBonificacion(pp, ep, ef, participacion)
	pf = calcularPromedio(pp,ep, ef)
	if participacion == 'A'
		return pf.to_f + (pf.to_f * 0.10).round(2)
	elsif participacion == 'B'
		return pf.to_f + (pf.to_f * 0.08).round(2)
	else
		return pf.to_f + (pf.to_f * 0.06).round(2)
	end
end


#--- zona de test ----

def test_calcularPromedio
    print validate(15, calcularPromedio(15,15,15))
    print validate(6.67, calcularPromedio(20,10,0))

end

def test_calcularBonificacion
    print validate(11.0, calcularBonificacion(10, 10, 10, 'A')) 
    print validate(14.31, calcularBonificacion(12.5, 15.5, 12, 'B')) 
    print validate(15.9, calcularBonificacion(15, 15, 15, 'C')) 

end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
   
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_calcularPromedio
  test_calcularBonificacion
  puts " "
end
test
