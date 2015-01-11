#encoding: utf-8
def monto(valor)
	if valor >= 1000
		costo_descuento = valor * 0.20
		total_descuento = valor - costo_descuento
		puts "El monto del descuento 20% es #{total_descuento.round(2)} Nuevos Soles"
	else
		puts "El monto no tiene descuento, pague lo que es #{valor.round(2)} Nuevos Soles"
	end
	puts "Gracias"
end

puts "Por favor, Ingresar el valor para descuento de 20%"
valor = gets.to_f
monto(valor)