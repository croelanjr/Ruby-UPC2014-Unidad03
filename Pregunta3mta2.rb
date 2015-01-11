#encoding:UTF-8
=begin
Una empresa que vende licencias de software para administrar dispositivos móviles tiene la siguiente lista de precios 
dependiendo del tipo de dispositivo:

-	Licencias Android: 30 USD Anuales.
-	Licencias iOs: 35 USD Anuales.
-	Licencias Windows: 60 USD Anuales.

Adicionalmente, dependiendo de la cantidad de licencias se pueden dar descuentos por volumen: 

-	De 1 a 100 licencias, tiene un 0% de descuento.
-	De 101 a 400 licencias, tiene un 10% de descuento.
-	De 401 a 800 licencias, tiene un 15% de descuento.
-	Más de 800 licencias, tiene un 20% de descuento.

Desarrollar un subprograma que permita determinar el precio de cada licencia, el porcentaje de descuento dependiendo de la 
cantidad de licencias a adquirir, así como el precio final a pagar por una empresa.
=end

def calcularPrecio(tipo)
	if tipo == "Android"
		return 30
	elsif tipo == "iOs"
		return 35
	elsif tipo == "Windows"
		return 60
	else
		return 0
	end
end

def calcularDescuento(cantidad)
	if cantidad < 100
	return 0.00
	elsif cantidad < 400
	return 0.10
	elsif cantidad < 800
	return 0.15
	else
	return 0.20
	end
end

def calcularTotalPagar(cantAndroid, cantIos, cantWindows)
	return (cantAndroid * 30) + (cantIos * 35) + (cantWindows * 60)
end
		
#--- zona de test ----

def test_calcularPrecio
    print validate(30, calcularPrecio("Android"))
	print validate(35, calcularPrecio("iOs"))
    print validate(60, calcularPrecio("Windows"))    
	print validate(0, calcularPrecio(""))    	
end

def test_calcularDescuento
    print validate(0.00, calcularDescuento(50)) 
    print validate(0.10, calcularDescuento(150)) 
    print validate(0.15, calcularDescuento(500)) 
    print validate(0.20, calcularDescuento(900)) 
end

def test_calcularTotal
    print validate(0, calcularTotalPagar(0,0,0)) 
    print validate(300, calcularTotalPagar(10,0,0)) 
    print validate(350, calcularTotalPagar(0,10,0)) 
	print validate(600, calcularTotalPagar(0,0,10)) 
    print validate(1250, calcularTotalPagar(10,10,10)) 
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
   
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_calcularPrecio
  test_calcularDescuento
  test_calcularTotal
  puts " "
end
test