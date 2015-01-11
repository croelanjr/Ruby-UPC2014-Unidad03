#encoding:UTF-8
=begin
Una empresa desea calcular el monto a cobrar por la compra de un producto. 
En caso de que el cliente compre menos de 50 productos no tendrá descuento alguno, 
si es que compra entre 50 y 100 productos tendrá un descuento del 5%, si compra mas 
de 100 productos tendrá un descuento del 8%. Adicionalmente, si el producto tiene bonificación, 
se le hará un descuento del 5% o de 50 soles buscando siempre el menor descuento de ambos valores.	
=end

def calcularDescuentoVolumen(cantidad, precioProducto)
	descuento1 = 0.05
	descuento2 = 0.08
	if cantidad < 50
	return 0
	elsif cantidad < 100
	return cantidad * (precioProducto * descuento1) 
	else
	return cantidad * (precioProducto * descuento2)
	end
end

def calcularDescuentoBonificacion(subtotal, bonificacion)
	precioProducto = 10 
	cantidad =  subtotal / precioProducto
	venta_descuento = calcularDescuentoVolumen(cantidad, precioProducto)
	descuento_bonificacion = 0.05
	if bonificacion == true
		if venta_descuento > 50
			return 50
		else 
			return subtotal * descuento_bonificacion
		end
	else
	return 0
	end
end

def calcularTotalPagar(cantidad, precioProducto, bonificacion)
	subtotal = cantidad * precioProducto
	total_bonificacion = calcularDescuentoBonificacion(subtotal, bonificacion)
	total_desc_volumen = calcularDescuentoVolumen(cantidad, precioProducto)
	if bonificacion == true
		if total_desc_volumen > 50 
		return subtotal - total_desc_volumen - 50
		else
		return subtotal - total_bonificacion
		end
	else
		return subtotal - total_desc_volumen
	end
end

#--- zona de test ----

def test_calcularDescuentoVolumen
    print validate(0, calcularDescuentoVolumen(40,10))
	print validate(30, calcularDescuentoVolumen(60,10))
    print validate(160, calcularDescuentoVolumen(200,10))    
end

def test_calcularDescuentoBonificacion
    print validate(20, calcularDescuentoBonificacion(400, true)) 
    print validate(0, calcularDescuentoBonificacion(600, false)) 
    print validate(50, calcularDescuentoBonificacion(2000, true)) 
end

def test_calcularTotal
    print validate(380, calcularTotalPagar(40,10, true))  
    print validate(570, calcularTotalPagar(60,10, false)) 
    print validate(1790, calcularTotalPagar(200,10, true))
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
   
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_calcularDescuentoVolumen
  test_calcularDescuentoBonificacion
  test_calcularTotal
  puts " "
end
test