=begin
Desarrollar un programa que permita 
definir los mensajes
no pase si es rojo
cuidado si es amarillo
pase si es verde
malogrado si es azul 
=end
def mensaje(color)
	case color
	when 'rojo'
		return 'no pase'
	when 'amarillo'
		return 'cuidado'
	when 'verde'
		return 'pase'
	when 'azul'
		return 'malogrado'
	end
end

#--- zona de test ----

def test_convertir
    print validate('no pase', mensaje('rojo'))
    print validate('cuidado', mensaje('amarillo'))
    print validate('pase', mensaje('verde'))
    print validate('malogrado', mensaje('azul'))
end


def validate (expected, value)
 expected == value ? "." : "F"
end

def test
   
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_convertir
  puts " "
end
test