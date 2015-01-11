# encoding: utf-8 
def circulo(radio)
    pi = 3.1416
	area = pi * (radio ** 2)
	puts "El Area del Círculo es:" 
	puts area.round(2)
end

puts "Ingrese el radio del círculo para calcular el área"
radio = gets.to_f
circulo(radio)