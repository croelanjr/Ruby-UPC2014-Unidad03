# encoding: utf-8 
def precio_con_igv(precio)
	igv = 0.18
	vv = precio * igv
	ventas = precio + vv
	puts "EL valor de la venta es:" 
	puts precio
	puts "El IGV del 18% es:"
	puts vv.round(2)
	puts "El precio con el IGV aplicado es:"
	puts ventas.round(2)
end

puts "Por favor, Ingresar el precio para calcular IGV"
precio = gets.to_f
precio_con_igv(precio)