#encoding: utf-8
def numero(valor)
	if (valor % 2 == 0)
		puts "El número #{valor} es PAR"
	else
		puts "El número #{valor} es IMPAR"
	end
	if valor > 0
		puts "El número #{valor} es Mayor que 0"
	elsif valor == 0
	    puts "El número #{valor} es igual que 0"
	else
		puts "El número #{valor} es Menor que 0"
	end	
	puts "Gracias"
end

puts "Por favor, Ingresar el valor para indicar"
puts "Si el número es par o impar"
puts "Si el número es mayor o menor que cero"
valor = gets.to_i
numero(valor)