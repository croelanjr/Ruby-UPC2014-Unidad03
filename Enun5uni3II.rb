=begin 
SAGA está invitando a un cierra puerta por cambio de temporada para el día de mañana, 
si se compran 2 prendas del mismo color lo llevas al costo de 100 soles cada una; 
si llevas entre 3 y 4, el precio es de es de 75 soles cada una, si la compra es mayor 
a 4 prendas, el costo es de 50 soles cada una. Escriba el el programa para saber cuanto 
pagará un cliente según el número de prendas del mismo color que compra con su tarjeta SAGA. 
Debe imprimirse el número de prendas que compra y el total a pagar, solo si aplica la promoción.
=end

#encoding: utf-8
def precio_prenda(cantidad)
	if cantidad <= 2
		return 100
	elsif cantidad <= 4
		return 75
	else
		return 50
	end
end

def importe_pagar(cantidad)
	precio = precio_prenda(cantidad)
	return cantidad * precio
end

#- zona de test----

def test_determinar_precio
print validate(100, precio_prenda(2))
print validate(75, precio_prenda(4))
print validate(50, precio_prenda(6))
end

def test_determinar_importe
print validate(200, importe_pagar(2))
print validate(225, importe_pagar(3))
print validate(300, importe_pagar(6))
print validate(300, importe_pagar(4))
print validate(500, importe_pagar(10))
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