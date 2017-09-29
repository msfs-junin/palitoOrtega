require "./lib/Humano.rb"
require "./lib/Maquina.rb"

class Juego 

   def initialize
      @humano = Humano.new
      @maquina = Maquina.new
   end

   def humano
      return @humano
   end
   
   def maquina
     return @maquina
   end

   def ganador
      ganaMaquina = @humano.resultado == "Tijera" && @maquina.resultado == "Piedra" || 
		    @humano.resultado == "Papel" && @maquina.resultado == "Tijera" || 
		    @humano.resultado == "Piedra" && @maquina.resultado == "Papel"
      ganaHumano =  @humano.resultado == "Papel" && @maquina.resultado == "Piedra" || 
		    @humano.resultado == "Tijera" && @maquina.resultado == "Papel" || 
                    @humano.resultado == "Piedra" && @maquina.resultado == "Tijera"
      if ganaMaquina	
        return "¡Perdiste!"   
      end
      if ganaHumano 
	@humano.sumarPunto
        return "¡Ganaste!"   
      end
      if @humano.resultado == @maquina.resultado 
        return "Empate" 
      end
      return "Error"
   end

   def reiniciar
     @humano.setPuntaje(0)
     @maquina.setPuntaje(0)
   end

end 
