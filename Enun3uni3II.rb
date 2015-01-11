=begin 
Dada la edad de una persona en  meses, calcule su edad en años y fracción de meses
=end

#encoding: utf-8
def edad(año_nacido)
  time = Time.new
  año_actual = time.year
  return año_actual - año_nacido
end

def fraccion_meses(año_nacido)
  edades = edad(año_nacido)
  return edades * 12
end

#- zona de test----

def test_determinar_edad
print validate(38, edad(1976))
print validate(45, edad(1969))
end

def test_determinar_edades
print validate(456, fraccion_meses(1976))
print validate(540, fraccion_meses(1969))
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
  puts "Test de prueba del programa"
  puts "-------------------------"
  test_determinar_edad
  test_determinar_edades
  puts " "
end

test