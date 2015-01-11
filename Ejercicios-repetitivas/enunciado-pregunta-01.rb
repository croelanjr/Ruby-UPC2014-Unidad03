#01.-Diseñar un subprograma que me permita saber si un número
# es perfecto, (un número es perfecto, cuando
# la suma de sus divisores, sin incluirlo al número es 
# exactamente el mismo número). 
# Ejemplo: 
# El 6 es un número perfecto por sus divisores son 1,2 y 3. 
# El subprograma retornará -1 si no es perfecto o el
# mismo número si es perfecto

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

#--- zona de test ----

def test_numero_perfecto
    print validate(6, numero_perfecto(6)) 
    print validate(-1, numero_perfecto(27)) 
    print validate(8128, numero_perfecto(8128)) 
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
   
  puts "Test de numeros perfectos"
  puts "---------------------------"
  test_numero_perfecto
  puts " "
end
test
