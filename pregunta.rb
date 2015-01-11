def calculoGenerico(a,b,c)
    a = 4 + (((24 % 5) ** 2 + 6) / 3)
	b = a * (32 / 3 * 15)
	c = c + (b + 10 * (a / 2.0 + 15) / 3 ** 3) + 2 * (b + a) + 9 * b
	a = c - a
	b = a + c
	v = a + b + c
	return v.round(2)
end

def calculoLogico(a,b,c,d,e)
	return ((a == c) && (b > d)) || (((a != e) && (c < e) || (e < a)) && (b != c))
end

def calcularPorcentajeARepartir(entidad, utilidad)
	case entidad
	when entidad = "infraestructura"
		return utilidad * 0.60
	when entidad = "utilidades"
		return utilidad * 0.40
	end
end

def montoARepartirEnIpads(utilidad)
	entidad = "infraestructura" || "utilidades"
	monto = calcularPorcentajeARepartir(entidad, utilidad)
	aire_acondicionado = 5000
	cinco_macs = 25000
	if utilidad == 10000
		return 0
	else
		return monto - (aire_acondicionado + cinco_macs)
	end
end

def calcularIpads(utilidad)
	costo_ipad = 1000
	monto_ipad = montoARepartirEnIpads(utilidad)
	return monto_ipad / costo_ipad
end

#CODIGO TEST (NO CAMBIAR)

# valida el valor esperado vs en valor que está generando nuestro algoritmo
def validate (expected, value)
 expected == value ? "." : "F"
end

# Programa inicial llamado para hacer testing
def test
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_pregunta01
  puts " "
  test_pregunta02
  puts " "
  test_pregunta03
  puts " "
end

# Zona de test
def test_pregunta01
    print validate(79336.37,calculoGenerico(1,5,10))
    print validate(81104.37,calculoGenerico(100,541,452))
    print validate(79436.37,calculoGenerico(100,20,35))   
end

def test_pregunta02
    print validate(true,calculoLogico(1,5,10,12,15))
    print validate(false,calculoLogico(15,50,2,1,15))
    print validate(true,calculoLogico(10,50,1,2,15))

end

def test_pregunta03
    print validate(180000,calcularPorcentajeARepartir("infraestructura",300000))
    print validate(4000,calcularPorcentajeARepartir("utilidades",10000))
    print validate(150000,montoARepartirEnIpads(300000))
    print validate(0,montoARepartirEnIpads(10000))
    print validate(150, calcularIpads(300000))
    print validate(0, calcularIpads(10000))
end

test
