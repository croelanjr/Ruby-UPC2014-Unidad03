def determinar_grado(t1, t2)
	if t1 > 0.95 && t2 > 0.75
		1
	elsif t1 > 0.95 && t2 <= 0.75
		2
	else
		3
	end
end

def determinar_pedido(t1, t2)
	grado = determinar_grado(t1, t2)
	case grado
		when 1
			20
		when 2
			30
		else
			50
		end
end

#--- zona de test------

def test_determinar_grado
	print validate(1, determinar_grado(0.96,0.76))
	print validate(2, determinar_grado(0.96,0.75))
	print validate(3, determinar_grado(0.95,0.76))
end

def test_determinar_pedido
	print validate(20, determinar_pedido(0.96,0.76))
	print validate(30, determinar_pedido(0.96,0.75))
	print validate(50, determinar_pedido(0.95,0.76))
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_determinar_grado
  test_determinar_pedido
  puts " "
end

test