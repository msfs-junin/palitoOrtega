class Maquina

   def initialize
      @resultado ="Piedra"
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

end
