# encoding: utf-8 
def billete(monto)
	tajada50 = (monto / 50)
	monto = (monto % 50)
	tajada20 = (monto / 20)
	monto = (monto % 20)
	tajada5 = (monto / 5)
	monto = (monto % 5)
	tajada1 = (monto / 1)
	puts "Los billetes que necesitas, son:"
	puts tajada50.to_s + " billetes de 50"
    puts tajada20.to_s + " billetes de 20"
    puts tajada5.to_s + " billetes de 5"
    puts tajada1.to_s + " billetes de 1"
end

puts "Por favor Ingresar el monto para entregar los billetes que necesitas"
monto = gets.to_i
billete(monto)