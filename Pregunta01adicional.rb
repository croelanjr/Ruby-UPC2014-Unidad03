#encoding:UTF-8
=begin
Desarrollar un programa que permita que a una empresa determinar el pago correspondiente según el volumen de compras de lotes de productos de bisutería china. 
En caso se compre un lote el pago será de 1500 soles. En caso se compren dos o tres lotes el pago será de 2800 soles. Si es que se compran desde cuatro hasta seìs lotes el pago será de 5800.
Por la compra de más de seis lotes el pago será de 8200.   
=end
PRECIO = 1500
def total_lote(lote)
	if lote == 1
		puts "El pago correspondiente según el lote #{lote} es : #{(lote * PRECIO).to_s} Nuevos Soles"
	elsif lote == 2 || lote == 3
		puts "El pago correspondiente según el lote #{lote} es : #{((PRECIO - 100) * 2).to_s} Nuevos Soles"
	elsif lote == 4 || lote == 5 || lote == 6
		puts "El pago correspondiente según el lote #{lote} es : #{((PRECIO * 4) - 200).to_s} Nuevos Soles"
	else
		puts "EL pago correspondiente según el lote #{lote} es : #{((PRECIO * 6) - 800).to_s} Nuevos Soles" 
	end
end

print "Por favor ingresar el volumen de compras de lotes de productos de bisutería china :"," "
lote = gets.to_i
puts 
puts total_lote(lote)

