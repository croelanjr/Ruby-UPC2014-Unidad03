# encoding: utf-8 
def deuda(monto)
	intereses = 0.15
	costo_intereses = monto * 0.15
	deuda_total = monto + costo_intereses
	puts "La deuda actual es: S/. #{deuda_total.round(2)} Nuevos Soles"
end

puts "Por favor Ingresar el monto de la deuda anterior"
monto = gets.to_i
deuda(monto)