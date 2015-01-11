# encoding: utf-8 
def numero_de_pagina(palabra)
	xpalabra = 10
	kbyte = 1024
	palabras = 300
	total_byte = palabra * kbyte
	total_caracteres = total_byte
	total_palabra = total_caracteres / xpalabra
	total_numero_pagina = total_palabra / palabras
	puts "El número de página aproximado es: #{total_numero_pagina} páginas"
end

puts "Por favor Ingresar la cantidad en Kbytes para calcular la cantidad de página"
palabra = gets.to_i
numero_de_pagina(palabra)