#encoding:UTF-8
=begin
Desarrollar un programa que calcule el índice de masa corporal (IMC) de una persona e indique el estado en el que se encuentra 
esa persona en función al valor del IMC de acuerdo a la siguiente tabla:

Valor de IMC  Diagnóstico
< 16  Criterio de ingreso en hospital
de 16 a 17  infrapeso
de 17 a 18  bajo peso
de 18 a 25  peso normal (saludable)
de 25 a 30  sobrepeso (obesidad de grado I)
de 30 a 35  sobrepeso crónico (obesidad de grado II)
de 35 a 40  obesidad premórbida (obesidad de grado III)
> 40 obesidad mórbida (obesidad de grado IV)

La fórmula del IMC= peso[Kg] /altura2[mt]


=end

def calcularIMC(peso, altura)
	imc = peso / (altura ** 2)
	return imc.round(2)
end

def determinarEstado(peso, altura)
	estado = calcularIMC(peso, altura)
	if estado < 16
	return "criterio de ingreso en hospital"
	elsif estado < 17
	return "infrapeso"
	elsif estado < 18
	return "bajo peso"
	elsif estado < 25
	return "peso normal (saludable)"
	elsif estado < 30
	return "sobrepeso (obesidad de grado I)"
	elsif estado < 35
	return "sobrepeso cronico (obesidad de grado II)"
	elsif estado < 40
	return "obesidad premorbida (obesidad de grado III)"
	else
	return "obesidad morbida (obesidad de grado IV)"
	end
end


#--- zona de test ----

def test_calcularIMC
    print validate(13.15, calcularIMC(45,1.85)) 
    print validate(16.89, calcularIMC(38,1.50)) 
    print validate(17.93, calcularIMC(50,1.67)) 
    print validate(18.81, calcularIMC(55,1.71)) 
    print validate(26.12, calcularIMC(80,1.75)) 
    print validate(30.25, calcularIMC(98,1.80)) 
    print validate(37.87, calcularIMC(120,1.78)) 
    print validate(43.69, calcularIMC(140,1.79)) 
end

def test_determinarEstado
    print validate("criterio de ingreso en hospital", determinarEstado(45,1.85)) 
    print validate("infrapeso", determinarEstado(38,1.50)) 
    print validate("bajo peso", determinarEstado(50,1.67)) 
    print validate("peso normal (saludable)", determinarEstado(55,1.71)) 
    print validate("sobrepeso (obesidad de grado I)", determinarEstado(80,1.75)) 
    print validate("sobrepeso cronico (obesidad de grado II)", determinarEstado(98,1.80)) 
    print validate("obesidad premorbida (obesidad de grado III)", determinarEstado(120,1.78)) 
    print validate("obesidad morbida (obesidad de grado IV)", determinarEstado(140,1.79)) 
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_calcularIMC
  test_determinarEstado
  puts " "
end

test