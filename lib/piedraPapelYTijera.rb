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
      if @humano.resultado == "Tijera" && @maquina.resultado == "Piedra" 	
        return "¡Perdiste!"   
      elsif @humano.resultado == "Papel" && @maquina.resultado == "Piedra"
 	@humano.sumarPunto
        return "¡Ganaste!" 
      elsif @humano.resultado == "Tijera" && @maquina.resultado == "Papel"
 	@humano.sumarPunto
        return "¡Ganaste!"
      elsif @humano.resultado == "Papel" && @maquina.resultado == "Tijera"
        return "¡Perdiste!"      
      elsif @humano.resultado == "Piedra" && @maquina.resultado == "Tijera"
 	@humano.sumarPunto
        return "¡Ganaste!"   
      elsif @humano.resultado == "Piedra" && @maquina.resultado == "Papel"
        return "¡Perdiste!" 
      elsif @humano.resultado == @maquina.resultado 
        return "Empate" 
      end  
   end

   def reiniciar
     @humano.setPuntaje(0)
     @maquina.setPuntaje(0)
   end

end 
