#encoding:UTF-8
=begin
Una empresa de cosméticos esta diseñando un aplicativo que dependiendo de ciertas 
características del cliente se le debe de mostrar cual es la fragancia que mejor se 
acople a su personalidad. Las posibles combinaciones dependiendo del sexo se muestran en la siguiente tabla:

Desarrollar un programa que permita determinar cual es la fragancia adecuada.
=end

def obtenerFragancia(sexo, personalidad, estilo)
	if sexo == 'm'
		if personalidad == "Intelectual"
			case estilo
			when "Clasico"
				return "Ohm"
			when "Moderno"
				return "Adrenalina"
			end
		else
			case estilo
			when "Clasico"
				return "Ohm"
			when "Moderno"
				return "Adrenalina"
			end
		end
	else
		if personalidad == "Ejecutiva"
			case estilo
			when "Recatada"
			return "Seda"
			when "Atrevida"
			return "Tentacion"
			end
		else
			case estilo
			when "Recatada"
			return "Seda"
			when "Atrevida"
			return "Tentacion"
			end
		end
	end
end

#--- zona de test ----

def test_obtenerFragancia
    print validate("Ohm", obtenerFragancia('m',"Intelectual","Clasico"))
	print validate("Adrenalina", obtenerFragancia('m',"Pasional","Moderno"))
    print validate("Seda", obtenerFragancia('f',"Ejecutiva","Recatada"))    
	print validate("Tentacion", obtenerFragancia('f',"Ejecutiva","Atrevida"))
end


def validate (expected, value)
 expected == value ? "." : "F"
end

def test
   
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_obtenerFragancia
  puts " "
end
test