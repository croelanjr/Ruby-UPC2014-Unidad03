=begin  
Una empresa de comida rápida que atiende por medio de distribución a domicilio desea 
un programa para calcular el jornal diario de sus trabajadores. El programa tomará 
como datos el número de día (1-Lunes, 2-Martes, 3-Miercoles, 4-Jueves, 5-Viernes, 6-Sábado, 7-Domingo), 
el turno (D-Diurno, N-Nocturno) y las horas trabajadas del día.
La tarifa se calcula de la siguiente manera:

La tarifa de horas 	diurnas es de 15 soles.
La tarifa de horas 	nocturnas es de 30 soles.

En caso de ser 	Domingo, la tarifa se incrementa en 10% para el turno diurno y en 20% para el nocturno.
=end 

#encoding: utf-8
def precio_tarifa(turno)
	if turno == "diurnas"
		return 15
	elsif turno == "nocturnas"
		return 30
	end
end

def importe_pagar(dia, turno, horas)
	precio = precio_tarifa(turno)
		case dia
			when "Lunes"
				if turno == "diurnas"
					return horas * precio
				else
					return horas * precio
				end
			when "Martes"
				if turno == "diurnas"
					return horas * precio
				else
					return horas * precio
				end
			when "Miercoles"
				if turno == "diurnas"
					return horas * precio
				else
					return horas * precio
				end
			when "Jueves"
				if turno == "diurnas"
					return horas * precio
				else
					return horas * precio
				end
			when "Viernes"
				if turno == "diurnas"
					return horas * precio
				else
					return horas * precio
				end
			when "Sabado"
				if turno == "diurnas"
					return horas * precio
				else
					return horas * precio
				end
			when "Domingo"
				if turno == "diurnas"
					return (horas * precio) + ((horas * precio) * 0.10)
				else
					return (horas * precio) + ((horas * precio) * 0.20)
				end
		end
end

#- zona de test----

def test_determinar_precio
print validate(15, precio_tarifa("diurnas"))
print validate(30, precio_tarifa("nocturnas"))
end

def test_determinar_importe
print validate(75, importe_pagar("Lunes", "diurnas", 5))
print validate(300, importe_pagar("Lunes", "nocturnas", 10))
print validate(135.0, importe_pagar("Martes", "diurnas", 9))
print validate(420.0, importe_pagar("Jueves", "nocturnas", 14))
print validate(132.0, importe_pagar("Domingo", "diurnas", 8))
print validate(432.0, importe_pagar("Domingo", "nocturnas", 12))
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
  puts "Test de prueba del programa"
  puts "-------------------------"
  test_determinar_precio
  test_determinar_importe
  puts " "
end

test