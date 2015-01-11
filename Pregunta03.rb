=begin
En una fábrica de acero, se determina el grado de cada plancha de acero de acuerdo a dos medidas (T1 y T2) que maneja la empresa y de acuerdo a los siguientes criterios.

El acero se considera de:
Grado 1 si T1 es mayor que 0.95 y T2 es mayor que 0.75;
Grado 2 si T1 es mayor que 0.95 pero T2 no es mayor que 0.75;
Grado 3 si T1 no es mayor que 0.95

Dependiendo del grado de acero se debe realizar el pedido respectivo de material para enviar al cliente. Por ello, para:
Grado 1 solicitar 20 planchas
Grado 2 solicitar 30 planchas
Grado 3 solicitar 50 planchas

Desarrollar un subprograma que permita determinar el Grado de una plancha y otro subprograma que determine el número de planchas a pedir.
=end
def determinargrado(t1, t2)
      if t1 > 0.95 and t2 > 0.75
        return 1
      elsif t1 > 0.95 and t2 <= 0.75
        return 2
      elsif t1 < 0.96 and t2 > 0.75
        return 3
      end
end

def deteminarpedido(t1, t2)
      cantidad_plancha = determinargrado(t1, t2)
      if cantidad_plancha == 1
        return 20
      elsif cantidad_plancha == 2
        return 30
      elsif cantidad_plancha == 3
        return 50
      end
end


#--- zona de test ----

def test_determinargrado
    print validate(1, determinargrado(0.96,0.76))
    print validate(2, determinargrado(0.96,0.75))    
    print validate(3, determinargrado(0.95,0.76))    
end

def test_deteminarpedido
    print validate(20, deteminarpedido(0.96,0.76)) 
    print validate(30, deteminarpedido(0.96,0.75)) 
    print validate(50, deteminarpedido(0.95,0.76)) 
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
   
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_determinargrado
  test_deteminarpedido
  puts " "
end
test
