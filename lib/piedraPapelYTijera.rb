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
      return "Gana Humano"
   end

end 
