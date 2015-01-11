# FACTORIAL Y SUMATORIA
# Escriba un programa que permita calcular la suma de 1+ 1/(2!) + 1/(3!) + 1/(4!) + .... + 1/(n!) 
# para un n dado. Escriba el programa de dos formas diferentes: 
# usando While, For

def factorial(n)
	if 0 == n or 1 == n
		return 1
	else
		return n * factorial(n - 1)
	end
end

def sumatoriaWhile(n)
	if n <= 0
    return 0
  else
      i = 1
      factorial = 1
      sumatoria = 0.0
      while i <= n
       factorial = factorial * i
       sumatoria = sumatoria + (1.0 / factorial.to_f)
       i = i + 1
      end
  end
    return sumatoria.round(2)
end

def sumatoriaFor(n)
	fact = 1
    sumatoria = 0.0
    for i in 1..n
        fact = fact * i
      sumatoria = sumatoria + (1.0 / fact.to_f)
    end
    return sumatoria.round(2)
end

#--- zona de test ----

def test_factorial
    print validate(120, factorial(5)) 
    print validate(5040, factorial(7)) 
	  print validate(362880, factorial(9)) 
end

def test_sumatoriaWhile
    print validate(1.50, sumatoriaWhile(2))
    print validate(1.67, sumatoriaWhile(3))
end

def test_sumatoriaFor
    print validate(1.50, sumatoriaFor(2))
    print validate(1.67, sumatoriaFor(3))
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test 
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_factorial
  test_sumatoriaWhile
  test_sumatoriaFor
  puts " "
end
test