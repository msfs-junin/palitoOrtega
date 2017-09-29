class Humano

   def initialize
      @resultado ="Papel"
      @puntaje = 0
   end

   def setResultado(valor)
      @resultado = valor
   end

   def resultado
      return @resultado
   end   

   def sumarPunto
     return @puntaje = @puntaje + 1
   end

   def puntaje
      return @puntaje
   end

   def setPuntaje(valor)
      @puntaje = valor
   end
      
end
