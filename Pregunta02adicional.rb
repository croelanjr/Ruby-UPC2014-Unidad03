#encoding: UTF-8
=begin
Una empresa desea realizar el cálculo del sueldo que debe pagar a un trabajador. Para ello se debe tomar en cuenta que hay tres tipos de trabajadores
1 Contratado
2 Tiempo Parcial
3 Freelance
En el caso del contratado su sueldo será de 1000 soles más 15% si es que ha trabajado horas extras. 
En el caso del Tiempo Parcial será de 500 soles más 8% por la cantidad de ventas logradas por comisión.
En el caso de Freelance será 25 soles por hora trabajada
Desarrollar el programa que me permita ingresar los datos y recibir el sueldo del trabajador.
=end
def trabajadores(tipo, horas)
	salario_contratado = 1000
	salario_parcial = 500
	salario_free = 25
	case tipo
	when tipo = 1
		if horas == 0
		puts "El Salario Contratado es #{salario_contratado.to_s} Nuevos soles"
		else
		puts "El Salario Contratado con #{horas} horas extras #{(salario_contratado + (salario_contratado * (horas * 0.15))).to_s} Nuevos Soles"
		end
	when tipo = 2
		ventas = horas
		if ventas == 0
		puts "El Salario de Tiempo Parcial es #{salario_parcial.to_s} Nuevos Soles"
		else
		puts "El Salario de Tiempo Parcial con la cantidad de ventas logradas por comisión es #{(salario_parcial + (ventas * 0.08)).to_s} Nuevos Soles"
		end
	when tipo = 3 
		puts "El Salario de Freelance es #{(salario_free * horas).to_s} Nuevos Soles"
	end
end

puts "Ingrese el tipo de trabajador (1)Contratado o (2) Tiempo Parcial) o (3)Freelance"
tipo = gets.to_i
puts "Ingrese la cantidad de horas o ventas logradas"
horas = gets.to_f

puts trabajadores(tipo, horas)
