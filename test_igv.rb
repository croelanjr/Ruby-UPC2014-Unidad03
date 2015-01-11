#econding = utf-8
IGV = 0.18

def calcular_total(precios)
	total = 0.0
	for i in 0...precios.size
		total = total + precios[i]
	end
	return total
end

def calcular_igv(monto)
	return monto * IGV
end

def calcular_descuento(monto)
	if monto > 100
	return 0.1
	else
	return 0
	end
end

def calcular_pago_final(precios)
	total = calcular_total(precios)
	descuento = calcular_descuento(total)
	monto = total - (total * descuento)
	igv = calcular_igv(monto)
	total_a_pagar = monto + igv
	return total_a_pagar
end

#------- zona de test---------

def test_calcular_igv
    print validate(18, calcular_igv(100)) 
end

def test_calcular_total
    print validate(42, calcular_total(@precios)) 
    print validate(60, calcular_total(@precios2))
end

def test_calcular_descuento
    print validate(0, calcular_descuento(80)) 
    print validate(0.1, calcular_descuento(180))
end

def test_calcular_pago_final
    print validate(49.56, calcular_pago_final(@precios)) 
    print validate(70.8, calcular_pago_final(@precios2))
end 

def validate (expected, value)
 expected == value ? "." : "F"
end

def test

	@precios = [12.00, 24.00, 6.00]
	@precios2 = [10.00, 20.00, 30.00]
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_calcular_igv
  test_calcular_total
  test_calcular_descuento
  test_calcular_pago_final
  puts " "
end

test