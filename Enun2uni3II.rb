=begin 
El valor de y se define como sigue:
Y = x2 +2x –3	si	 -3 < x <= 2
Y = 5x + 7	si	 2 < x <= 10
Y = 0		si	 x <= -3 o x > 10
=end

#encoding: utf-8
def valores(x1, x2)
	if x1 > -3
		return x1 ** 2 + (2 * x1) - 3
	else
		return x2 ** 2 + (2 * x2) - 3
	end
end

def valores1(x1, x2)
	if x1 < 2
		return 5 * x1 + 7
	else
		return 5 * x2 + 7
	end
end

def valores2(x1, x2)
	valorescero = valores(x1, x2)
	if valorescero <= -3 || valorescero > 10
		return 0
	end
end

#--- zona de test------

def test_determinar_valores
print validate(12, valores(3, -2))
print validate(-3, valores(-2, 3))
end

def test_determinar_valores2
print validate(-3, valores1(-2, -10))
print validate(-43, valores1(-10, -2))
end

def test_determinar_valores3
print validate(0, valores2(-3, 10))
print validate(0, valores2(10, -3))
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
  puts "Test de prueba del programa"
  puts "-------------------------"
  test_determinar_valores
  test_determinar_valores2
  test_determinar_valores3
  puts " "
end

test