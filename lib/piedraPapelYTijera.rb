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
      elsif @humano.resultado == "Tijera" && @maquina.resultado == "Papel"
      return "Gana Humano"
      elsif @humano.resultado == "Papel" && @maquina.resultado == "Tijera"
      return "Gana Computadora"      
      elsif @humano.resultado == "Piedra" && @maquina.resultado == "Tijera"
      return "Gana Humano"   
elsif @humano.resultado == "Piedra" && @maquina.resultado == "Papel"
      return "Gana Computadora" 
elsif @humano.resultado == @maquina.resultado 
      return "Empate" 
end  
   end
end 
