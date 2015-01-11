# encoding: utf-8 
=begin
Ejercicio 1
Desarrollar un programa que permita al usuario ingresar su nombre y edad y muestre el saludo
=end
def datos(name, edad)
    puts "Hola " + name + ", " + "tienes " + edad.to_s + " años"
end

puts "Por favor ingresar tu nombre"
name = gets.chomp
puts "Por favor ingresar tu edad"
edad = gets.to_i
datos(name, edad)