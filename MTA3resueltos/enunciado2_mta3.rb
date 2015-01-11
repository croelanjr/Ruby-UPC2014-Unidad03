# NUMEROS PRIMOS Y FIBONACCI
# Escriba un programa que dado un valor entero positivo y determine:
# a) Si el entero es un número primo.
# b) Si el entero es un número de Fibonacci. 
#(Los número de Fibonacci forman una secuencia en la cual cada número es igual a la suma de los dos anteriores, siendo los dos primeros 
#  números iguales a 1)
# Si cumple ambas condiciones devolver verdadero, sino alguno o ambos no cumplen debe de devolver falso.

def esNumeroPrimo(numero)
	contador = 0
	for i in 1..numero
		if numero % i == 0
			contador = contador + 1
		end
	end
	if contador > 2
		return false
	else
		return true
	end
end

def esNumeroFibonacci(numero)
  arreglo = [0, 1]
  while numero > arreglo.last
    x, y = arreglo.pop(2)
    arreglo.push(x, y, x + y)
  end
  if numero == arreglo.last
  	return true
  else
  	return false
  end
end

def cumpleCondiciones(numero)
  condicion_primo = esNumeroPrimo(numero)
  condicion_fibonacci = esNumeroFibonacci(numero)
  if condicion_primo && condicion_fibonacci
  	return true
  else 
  	return false
  end
end

#--- zona de test ----

def test_esNumeroPrimo
    print validate(true, esNumeroPrimo(13))
    print validate(false, esNumeroPrimo(21)) 
  	print validate(false, esNumeroPrimo(24)) 
end

def test_esNumeroFibonacci
    print validate(true, esNumeroFibonacci(13))
    print validate(true, esNumeroFibonacci(21))
	  print validate(false, esNumeroFibonacci(24))
end

def test_cumpleCondiciones
    print validate(true, cumpleCondiciones(13))
    print validate(false, cumpleCondiciones(21))
	  print validate(false, cumpleCondiciones(24))
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_esNumeroPrimo
  test_esNumeroFibonacci
  test_cumpleCondiciones
  puts " "
end

test