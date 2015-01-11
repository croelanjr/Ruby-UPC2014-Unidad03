#encoding: UTF-8
#realizar un programa que devuelva la suma de los digitos impares de un numero
#Pejm: numero=34523, dara como resultado 3+5+3 = 11
def obtenerSumaDigitosPosicionImpar(numero)
      cadena = numero.to_s
      total = 0
       for i in 0..cadena.size
        if (cadena[i].to_i).odd?
          total = total + cadena[i].to_i
        end
      end
      return total.to_i
end

#realizar un programa que dado un numero, se devuelve su valor invertido
#Pejm: 1234 deberia de devolver 4321
def invertirNumero(numero)
    @numero = numero.to_s
    return (@numero.reverse).to_i
end

#realizar un programa que dado 2 numeros, determine cuantas veces esta contenido el primer numero en el segundo numero
#Peje: numero=23434534 y subnumero=34, dara como resultado 3
def vecesRepiteNumeroEnNumero(numero, subnumero)
	   cadena = numero.to_s
     contador = 0
     for i in 0..cadena.size
        if subnumero == cadena[i].to_i
          contador = contador + 1
        end
     end
     return contador
end

#determinar cuantos numeros primos hay en un rango
def cantidadPrimosRango(rangoInicial, rangoFinal)
    contador = 0
    x = rangoInicial
    y = rangoFinal
  if x >= 4
    z = x - 1
  else
    z = x
  end
  for i in z..y
    if y % i == 0
      contador = contador + 1
    end
  end
 return contador
end

#--- zona de test ----

def test_obtenerSumaDigitosPosicionImpar
    print validate(4, obtenerSumaDigitosPosicionImpar(123))
	  print validate(4, obtenerSumaDigitosPosicionImpar(1234))
    print validate(1, obtenerSumaDigitosPosicionImpar(1))    
end

def test_invertirNumero
    print validate(4, invertirNumero(4)) 
    print validate(51, invertirNumero(15)) 
    print validate(4321, invertirNumero(1234)) 
end

def test_vecesRepiteNumeroEnNumero
    print validate(0, vecesRepiteNumeroEnNumero(1234,5)) 
    print validate(1, vecesRepiteNumeroEnNumero(22342,3)) 
    print validate(5, vecesRepiteNumeroEnNumero(667666,6)) 
end

def test_cantidadPrimosRango
    print validate(2, cantidadPrimosRango(1,2)) 
    print validate(3, cantidadPrimosRango(1,4)) 
    print validate(2, cantidadPrimosRango(4,9)) 
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
   
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_obtenerSumaDigitosPosicionImpar
  test_invertirNumero
  test_vecesRepiteNumeroEnNumero
  test_cantidadPrimosRango
  puts " "
end

test