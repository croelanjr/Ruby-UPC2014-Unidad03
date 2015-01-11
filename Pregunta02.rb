#Desarrollar un subprograma que permita calcular el volumen de una piscina
def volumen_piscina(largo,ancho,profundidad)
  volumen_total = largo * ancho * profundidad
  return volumen_total.round(2)
end

#Desarrollar un subprograma que permita definir si una persona es mayor de edad o no
#el programa retornará true si es mayor de edad o false si no lo es. 

def mayor_de_edad(edad)
  if edad < 18
    return false
  else
    return true
  end
end


#--- zona de test ----

def test_volumen_piscina
    print validate(10000.0, volumen_piscina(10.0,100.0,10.0))
    print validate(3000.0, volumen_piscina(30.0,10.0,10.0))    
end

def test_mayor_de_edad
    print validate(true, mayor_de_edad(18)) 
    print validate(false, mayor_de_edad(12)) 
    print validate(true, mayor_de_edad(22)) 
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
   
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_volumen_piscina
  test_mayor_de_edad
  puts " "
end
test
