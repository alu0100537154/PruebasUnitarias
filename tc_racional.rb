# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "./racional.rb"
require "test/unit"


class Test_Fraccion < Test::Unit::TestCase
        
        def setup
			@numero = Fraccion.new(1,10)
			@numero1 = Fraccion.new(1,20)
		end
        
        def test_1
        
                assert_equal("3/20", @numero.suma(@numero1).to_s) 
                assert_equal("1/20", @numero.resta(@numero1).to_s) 
                assert_equal("1/200", @numero.multiplicacion(@numero1).to_s) 
                assert_equal("2", @numero.division(@numero1).to_s) 
                
        end

end
