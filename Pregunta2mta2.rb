#encoding:UTF-8
#encoding:UTF-8
=begin
En una fábrica de vidrios, es importante definir el espesor que debe tener una pieza dependiendo del tamaño que tendrá la misma 
(largo y ancho), es así que se necesita determinar dicho espesor de la siguiente manera:

- Si la pieza tiene dimensiones entre 1 metro de ancho y 2.5 metros de largo, el espesor deberá ser de 1.5 cm. En cualquier 
otro caso, el espesor deberá ser de 2.5cm

El espesor se utiliza para determinar el precio de la pieza de vidrio. Es por ello que: 

- Si el espesor es de 1.5 cm la pieza costará 55.00 nuevos soles por metro cuadrado
- Si el espesor es de 2.5 cm la pieza costará 75.00 nuevos soles por metro cuadrado

Desarrollar un subprograma que permita determinar el espesor de una pieza de vidrio y otro subprograma que determine el precio 
a pagar por la pieza.
 
=end
def calcularEspesor(largo, ancho)
	area = largo * ancho
	if 6.25 < area
	return 2.5
	else
	return 1.5
	end
end

def calcularPrecio(largo, ancho)
	area_total = largo * ancho
	if 1.0 == area_total
		return (area_total * 55.00).round(2)
	else 
		return (area_total * 75.00).round(2)
	end
end



#--- zona de test ----

def test_calcularEspesor
    print validate(1.5, calcularEspesor(2.5,2.5))
	print validate(1.5, calcularEspesor(1.0,1.0))
    print validate(2.5, calcularEspesor(5.0,1.5))    
	print validate(2.5, calcularEspesor(8.0,2.5))    	
end

def test_calcularPrecio
    print validate(93.75, calcularPrecio(2.5,0.5)) 
    print validate(55.00, calcularPrecio(1.0,1.0)) 
    print validate(562.50, calcularPrecio(5.0,1.5)) 
    print validate(1500.00, calcularPrecio(8.0,2.5)) 
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
   
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_calcularEspesor
  test_calcularPrecio
  puts " "
end
test