=begin
Una empresa desea determinar la cantidad de cuotas y el monto de las cuotas que debe pagar una persona 
según dos criterios: edad y el monto del préstamo.

En caso la persona sea menor de 20 y el monto sea mayor de 1000 pero no mayor de 2000 soles entonces 
las cuotas serán 36. En el caso la persona sea de 20 años o mayor y el monto sea mayor a 2000 soles 
las cuotas serán 24. En caso la persona sea menor de 20 años y el monto sea menor o igual a 1000 soles 
entonces las cuotas serán 12. Finalmente si la persona es de 20 años o mayor y el monto no sea mayor a 
2000 soles las cuotas serán 6. En cualquier otro caso, si lo hubiera,  se ha determinado que las cuotas serán de 3 partes. 

Desarrollar un subprograma que permita determinar el número de cuotas a pagar. 
Desarrollar un subprograma que permita determinar el monto a pagar en cada cuota. 
=end
def cantidad_cuotas(edad, monto)
    if edad < 20 and monto < 1000.0 
      return 12
    elsif edad < 20 and monto > 1000.0 and monto < 2000.0 
      return 36
    elsif edad >= 20 and monto >= 2000.0 
      return 24
    elsif edad >= 20 and monto < 2000.0 
      return 6
    else
      return 3
    end  
end

def monto_cuotas(edad, monto)
 total_cuota = cantidad_cuotas(edad,monto)
 return (monto / total_cuota).round(2)
end

#--- zona de programa principal -----



#--- zona de test ----

def test_cantidad_cuotas
    print validate(36, cantidad_cuotas(16,1900.0))
    print validate(24, cantidad_cuotas(29,2100.0))    
    print validate(12, cantidad_cuotas(19,700.0))    
    print validate(6, cantidad_cuotas(20,1000.0))
    print validate(3, cantidad_cuotas(15,3200.0))    
end

def test_monto_cuotas
    print validate(87.5, monto_cuotas(29,2100.0)) 
    print validate(200.0, monto_cuotas(30,1200.0)) 
    print validate(50.0, monto_cuotas(16,1800.0))
    print validate(180.0, monto_cuotas(25,1080.0))
    print validate(1000.0, monto_cuotas(25,24000.0))


end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
   
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_cantidad_cuotas
  test_monto_cuotas
  puts " "
end
test
