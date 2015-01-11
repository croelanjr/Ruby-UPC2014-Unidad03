#encoding: utf-8
def intereses_cargado(saldo)
	if saldo < 500
		return 0.18
	else
		return 0.20
	end
end

def monto_intereses(saldo)
	intereses = intereses_cargado(saldo)
	return saldo * intereses
end

def monto_total(saldo)
	tot_inte = monto_intereses(saldo)
	return saldo + tot_inte
end

#--- zona de test------

def test_determinar_intereses
	print validate(0.18, intereses_cargado(400))
	print validate(0.20, intereses_cargado(1800))
end

def test_determinar_monto_intereses
	print validate(72, monto_intereses(400))
	print validate(360, monto_intereses(1800))
end

def test_determinar_total
	print validate(472, monto_total(400))
	print validate(2160, monto_total(1800))
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_determinar_intereses
  test_determinar_monto_intereses
  test_determinar_total
  puts " "
end

test