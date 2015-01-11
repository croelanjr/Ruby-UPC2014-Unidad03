# encoding: utf-8
def datos(nota1, nota2, nota3)
    promedio = (nota1 + nota2 + nota3) / 3
	puts "El promedio es:" 
	puts promedio.round(4)
end

puts "Ingrese la primera nota"
nota1 = gets.to_f
puts "Ingrese la segunda nota"
nota2 = gets.to_f
puts "Ingrese la tercera nota"
nota3 = gets.to_f
datos(nota1, nota2, nota3)