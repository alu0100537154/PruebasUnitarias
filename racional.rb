# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion

	attr_reader :numerador, :denominador #Numerador y denominador
	
	def initialize(nume,deno)
		mcd = gcd(nume,deno)
		@numerador = nume / mcd
		@denominador =deno / mcd
	end
	
	
	def to_s
		if @numerador == 0 
			"0"
		elsif @denominador == 1 
			"#{@numerador}"	
		elsif @numerador == @denominador 
			"1"
		else
			"#{@numerador}/#{@denominador}"
		end
	end
	
	
	def + (other)
		Fraccion.new(@numerador * other.denominador + other.numerador * @denominador, @denominador * other.denominador)
	end
	
	
	def - (other)
		Fraccion.new(@numerador * other.denominador - other.numerador * @denominador, @denominador * other.denominador)
	end
	
	
	def * (other)
		Fraccion.new(@numerador * other.numerador, @denominador *other.denominador)
	end
		
       
	def / (other)
		Fraccion.new(@numerador * other.denominador, @denominador * other.numerador)
	end
end




a = Fraccion.new(1, 10)
b = Fraccion.new(1, 20)

print "Valor de a = "
puts a
print "Valor de b = "
puts b

print "La suma es = "
puts a.+(b)
print "La resta es = "
puts a.-(b)
print "La multiplicacion es = "
puts a.*(b)
print "La division es = "
puts a./(b)
