require "../lib/piedraPapelYTijera.rb"
require "../lib/Humano.rb"
require "../lib/Maquina.rb"

describe "PiedraPapelYTijera" do

   it "Humano elige papel, computadora elige piedra, gana papel" do
     juego = Juego.new
     juego.humano.setResultado("Papel")
     juego.maquina.setResultado("Piedra")
     juego.ganador.should == "Gana Humano"
   end
end
