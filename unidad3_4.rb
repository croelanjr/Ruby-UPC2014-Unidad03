#encoding: utf-8
def area(a, b)
	gal = 0.25
	area_total = a * b
	galones = area_total * gal
	puts "El área de la pared es: #{area_total.to_s} m2"
	if galones >= 10
	puts "La Cantidad de Disolvente es #{galones.to_s} galones de la marca CPP"
	else
	puts "La Cantidad de Disolvente es #{galones.to_s} galones de la marca Latex Pato" 
	end
end 

puts "Por favor, Ingresar las medidas para saber"
puts "la cantidad de galones Disolvente"
puts "Por favor ingresar el alto de la pared"
a = gets.to_f
puts "Por favor ingresar el ancho de la pared"
b = gets.to_f
area(a, b)