#Desarrollar una aplicación que permita calcular el área de un terreno
def area_terreno(largo, ancho)
  total_area = largo * ancho
  return total_area.round(2)	
end

#Desarrollar una aplicación que permita calcular el descuento de los empleados de una empresa
#tomando en cuenta que los obreros tienen un 12% de descuento y los administrativos tienen un 
#15% de descuento. Los tipos se determinan como 'o' para obreros y 'a' para administrativos.

def descuento_sueldo(sueldo, tipo_obrero)
  descuento_obrero = 0.12
  descuento_admini = 0.15
  if tipo_obrero == 'o'
    return sueldo - (sueldo * descuento_obrero)
  elsif tipo_obrero == 'a'
    return sueldo - (sueldo * descuento_admini)
  end
end

#--- zona de test ----

def test_area_terreno
    print validate(1000.0, area_terreno(10.0,100.0))
    print validate(300.0, area_terreno(30.0,10.0))    
end

def test_decuento_sueldo
    print validate(88.00, descuento_sueldo(100.0,'o')) 
    print validate(85.00, descuento_sueldo(100.0,'a')) 
    print validate(880.00, descuento_sueldo(1000.0,'o')) 
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
   
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_area_terreno
  test_decuento_sueldo
  puts " "
end
test
