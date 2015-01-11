# CODIGO DE BARRAS
# Una compañia esta manejando su propio estandar de codigo de barras.
# La forma como se conforma es de la siguiente manera: YXXXZZZ
# La primera posicion(Y) nos devuelve el tipo de producto. Los tipos de productos son
# 1:CERVEZA, 2:PISCO, 3:RON, 4:TEQUILA, 5:WHISKY, 6:VODKA, 7:ESPUMANTE, 8:VINO, 9:OTROS, 0:GASEOSA
# La segunda, tercera y cuarta posicion(XXX) nos indica el codigo de la marca
# La quinta, sexta y septima posicion(ZZZ) nos indica el precio
# Se solicita dado un codigo de barras indicar cual es el tipo de producto
# Se solicita dado un codigo de barras indicar cual es el precio

def obtenerValorSubposicion(numero, posicionInicial, posicionFinal)
	cadena = numero.to_s
	@x = (posicionInicial.to_i) - 1
	@y = (posicionFinal.to_i) - 1
	return (cadena[@x..@y]).to_i
end

def obtenerTipoProducto(codigoBarras)
	tipo_de_producto = codigoBarras.to_s 
	if tipo_de_producto[0] == "1"
		return "CERVEZAS"
	elsif tipo_de_producto[0] == "2"
		return "PISCO"
	elsif tipo_de_producto[0] == "3"
		return "RON"
	elsif tipo_de_producto[0] == "4"
		return "TEQUILA"
	elsif tipo_de_producto[0] == "5"
		return "WHISKY"
	elsif tipo_de_producto[0] == "6"
		return "VODKA"
	elsif tipo_de_producto[0] == "7"
		return "ESPUMANTE"
	elsif tipo_de_producto[0] == "8"
		return "VINO"
	elsif tipo_de_producto[0] == "9"
		return "OTROS"
	elsif tipo_de_producto[0] == "0"
		return "GASEOSA"
	end
end

def obtenerPrecio(codigoBarras)
	cadena_precio = codigoBarras.to_s
  	return (cadena_precio[4..6]).to_i
end

#--- zona de test ----

def test_obtenerValorSubposicion
    print validate(122, obtenerValorSubposicion(1223012, 1, 3)) 
    print validate(2241, obtenerValorSubposicion(2224105, 2, 5)) 
	print validate(003, obtenerValorSubposicion(9451003, 5, 7)) 
end

def test_obtenerTipoProducto
    print validate("CERVEZAS", obtenerTipoProducto(1223012))
    print validate("PISCO", obtenerTipoProducto(2224105))
	print validate("OTROS", obtenerTipoProducto(9451003))
end

def test_obtenerPrecio
    print validate(12, obtenerPrecio(1223012))
    print validate(105, obtenerPrecio(2224105))
	print validate(3, obtenerPrecio(9451003))
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_obtenerValorSubposicion
  test_obtenerTipoProducto
  test_obtenerPrecio
  puts " "
end

test