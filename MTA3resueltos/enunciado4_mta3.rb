# CLAVE DIGITAL
# Un banco establece que la clave secreta para acceso a sus cajeros automaticos debe ser un 
# numero de cuatro digitos, tales que ninguno de ellos se repita y que la suma de los 
# dos digitos intermedios sea par. 
# Escribir un programa en ruby que permita ingresar un valor entero y si se trata 
# de una clave valida devolver el segundo digito menor de la clave, sino devuelve -1

#devuelve verdadero si es que la clave es valida
def esClaveValida(clave)
	cadena_clave = clave.to_s
	medio_clave = (cadena_clave[1]).to_i + (cadena_clave[2].to_i)
	return medio_clave.even?
end

#devuelve el segundo digito menor de la clave
def segundoDigitoMenor(clave)
	cadena_digito = clave.to_s
	return (cadena_digito[1]).to_i
end

#si es una clave valida devuelve el segundo digito menor de la clave, sino "los numeros repite" devuelve -1
def validador(clave)
	valida = esClaveValida(clave)
	intermedio = segundoDigitoMenor(clave)
	if valida == true
		return intermedio
	elsif valida == false
		return -1 
	end
end

#--- zona de test ----

def test_esClaveValida
    print validate(true, esClaveValida(1245)) 
    print validate(false, esClaveValida(1256))
	print validate(true, esClaveValida(1241)) 
end

def test_segundoDigitoMenor
    print validate(3, segundoDigitoMenor(1345))
    print validate(2, segundoDigitoMenor(1256))
	print validate(6, segundoDigitoMenor(7685))
end

def test_validador
    print validate(2, validador(1245))
	print validate(2, validador(1241)) 
    print validate(-1, validador(1256)) 
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test 
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_esClaveValida
  test_segundoDigitoMenor
  test_validador
  puts " "
end
test