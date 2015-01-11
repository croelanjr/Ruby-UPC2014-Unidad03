=begin 
Dados el valor antiguo y el actual del contador de la luz, escribir un programa que 
determine a cuánto asciende la factura de la luz de un determinado abonado. El importe 
es la suma de la cuota fija (12 soles) más una cuota variable que depende del consumo y 
se calcula por tramos: los primeros 100 Kws, a 0.60 soles el Kw; los 150 Kws siguientes, 
a 0.40 soles el Kw; si el consumo excede de 250 Kws, esa diferencia se cobra a 0.20 soles 
el Kw.
=end

#encoding: utf-8
def precio_kwatios(consumo)
  if consumo <= 100
    return 0.60
  elsif consumo <= 150
    return 0.40
  else
    return 0.20
  end
end

def importe(meses, consumo)
  precio = precio_kwatios(consumo)
    case meses
        when "Enero"
            return (consumo * precio + 12).round(2)
        when "Febrero"
            return (consumo * precio + 12).round(2)
        when "Marzo"
            return (consumo * precio + 12).round(2)
        when "Abril"
            return (consumo * precio + 12).round(2)
        when "Mayo"
            return (consumo * precio + 12).round(2)
        when "Junio"
            return (consumo * precio + 12).round(2)
        when "Julio"
            return (consumo * precio + 12).round(2)
        when "Agosto"
            return (consumo * precio + 12).round(2)
        when "Setiembre"
            return (consumo * precio + 12).round(2)
        when "Octubre"
            return (consumo * precio + 12).round(2)
        when "Noviembre"
            return (consumo * precio + 12).round(2)
        when "Diciembre"
            return (consumo * precio + 12).round(2)
        end
end

#- zona de test----

def test_determinar_precio
print validate(0.60, precio_kwatios(100))
print validate(0.40, precio_kwatios(150))
print validate(0.20, precio_kwatios(250))
end

def test_determinar_consumo
print validate(69.60, importe("Enero", 96))
print validate(64.00, importe("Febrero", 130))
print validate(25.80, importe("Marzo", 23))
print validate(64.00, importe("Abril", 260))
print validate(44.40, importe("Mayo", 54))
print validate(25.80, importe("Junio", 23))
print validate(61.20, importe("Julio", 123))
print validate(58.80, importe("Agosto", 234))
print validate(48.00, importe("Setiembre", 180))
print validate(61.00, importe("Octubre", 245))
print validate(54.60, importe("Noviembre", 213))
print validate(62.80, importe("Diciembre", 127))
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
  puts "Test de prueba del programa"
  puts "-------------------------"
  test_determinar_precio
  test_determinar_consumo
  puts " "
end

test
