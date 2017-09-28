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
      return "Gana Computadora"   
      elsif @humano.resultado == "Papel" && @maquina.resultado == "Piedra"
      return "Gana Humano"       
end  
   end
end 
