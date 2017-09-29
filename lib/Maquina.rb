class Maquina

   def initialize
      @resultado ="Piedra"
      @puntaje = 0
   end

   def setResultado(valor)
      @resultado = valor
   end
	def setResultadoRandom
	opciones = ["Piedra","Papel","Tijera"]
	@resultado = opciones[ Random.rand 3]
	end

   def resultado
      return @resultado
   end

   def puntaje
      return @puntaje
   end

   def setPuntaje(valor)
      @puntaje = valor
   end


end
