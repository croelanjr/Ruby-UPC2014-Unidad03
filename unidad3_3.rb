#encoding: utf-8
def mayor(x, y, z)
	numero_mayor = x
	if y > numero_mayor
		numero_mayor = y
	end
	if z > numero_mayor
		numero_mayor = z
	end
	return numero_mayor
end

def menor(x, y ,z)
    numero_menor = x
	if y < numero_menor
		numero_menor = y
	end
	if z < numero_menor
		numero_menor = z
	end
	return numero_menor
end

def medio(x, y, z)
	numero_mayor = mayor(x, y, z)
	numero_menor = menor(x, y, z)
	total = x + y + z
	medio = total - (numero_mayor + numero_menor)
end

puts "Por favor, Ingresar los valores para indicar"
puts "si los numeros tiene el mayor, el menor y el del medio"
puts "Por favor ingrese el primer valor"
x = gets.to_i
puts "Por favor ingrese el segundo valor"
y = gets.to_i
puts "Por favor ingrese el ultimo valor"
z = gets.to_i
puts "El número Mayor es: " + mayor(x, y, z).to_s
puts "El número Menor es: " + menor(x, y, z).to_s
puts "El número Medio es: " + medio(x, y, z).to_s

