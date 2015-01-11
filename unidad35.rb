# encoding: utf-8 
def formula(p1, p2, p3, p4, p5)
	p1 = p1 * 1
	p2 = p2 * 2
	p3 = p3 * 2.5
	p4 = p4 * 3
	p5 = p5 * 3.5
	ratio = p1 + p2 + p3 + p4 + p5 / 12
	puts "EL ratio es:" 
	puts ratio.round(2)
end

puts "Por favor, Ingresar Los cincos precios de un producto para calcular ratio"
puts "Ingrese el primer valor"
p1 = gets.to_f
puts "Ingrese el segundo valor"
p2 = gets.to_f
puts "Ingrese el tercer valor"
p3 = gets.to_f
puts "Ingrese el cuarto valor"
p4 = gets.to_f
puts "Ingrese el quinto valor"
p5 = gets.to_f
formula(p1, p2, p3, p4, p5)