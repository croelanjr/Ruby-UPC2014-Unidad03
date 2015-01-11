#02.-Basado en el  ejercicio anterior de este MTA4
# Diseñar un programa que retorne la suma de los n primeros
# números perfectos. 
# Ejemplo: la suma de los dos primeros números perfectos: 
# suma = 6 + 28 = 34 

def numero_perfecto(numero)
	sum = 0
  for i in 1..(numero - 1)
      if (numero % i == 0)
        sum = sum + i
      end
  end
  if (sum == numero)
    return numero
  else
    return -1
  end
end
# Suma los "n" primeros numeros perfectos
def suma_perfectos(n)
  contador = 1
  suma = 0
  while (n > 0)
    esperfecto = numero_perfecto(contador)
      if (esperfecto == contador)
        suma = suma + contador
        n = n - 1
      end
    contador = contador + 1
  end 
  return suma 
end

#--- zona de test ----

def test_suma_perfectos
    print validate(34, suma_perfectos(2)) 
    print validate(530, suma_perfectos(3))
	  print validate(8658, suma_perfectos(4)) 
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
   
  puts "Test suma de n numeros perfectos"
  puts "---------------------------"
  test_suma_perfectos
  puts " "
end

test

numero_