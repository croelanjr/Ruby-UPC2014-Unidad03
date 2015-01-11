#encoding: utf-8
def radio(valor)
	pi = 3.14259
	longitud_circunferencia = 2 * pi * valor
	area_circulo = pi * (valor ** 2)
	diametro_circulo = valor * 2
	puts "Resultados"
	puts "El diámetro de un círculo es: #{diametro_circulo}"
	puts "La circunferencia de un círculo es: #{longitud_circunferencia.round(2)}"
	puts "EL área de un círculo es: #{area_circulo.round(2)}"
	puts "Gracias"
end

puts "Por favor, Ingresar el valor del radio de un círculo"
puts "para calcular el diámetro, la circunferencia y el área"
valor = gets.to_f
radio(valor)

