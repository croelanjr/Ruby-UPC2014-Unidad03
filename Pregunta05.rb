=begin
Desarrollar un subprograma que permita convertir soles a dólares y un subprograma que permita convertir de dólares
a soles tomando en cuenta un tipo de cambio de 2.55 soles por dolar

=end
TIPO_DE_CAMBIO = 2.55

def soles_a_dolares(monto)
  return (monto / TIPO_DE_CAMBIO).round(2)
end

def dolares_a_soles(monto)
	return (monto * TIPO_DE_CAMBIO).round(2)
end

#--- zona de test ----

def test_soles_a_dolares
    print validate(100.00, soles_a_dolares(255.00)) 
    print validate(1000.00, soles_a_dolares(2550.00)) 
end

def test_dolares_a_soles
    print validate(255.00, dolares_a_soles(100.00)) 
    print validate(2550.00, dolares_a_soles(1000.00)) 
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
   
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_soles_a_dolares
  test_dolares_a_soles
  puts " "
end
test
