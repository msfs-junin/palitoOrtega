require "./lib/piedraPapelYTijera.rb"
require "./lib/Humano.rb"
require "./lib/Maquina.rb"

describe "PiedraPapelYTijera" do

   it "Humano elige papel, computadora elige piedra, gana papel" do
     juego = Juego.new
     juego.humano.setResultado("Papel")
     juego.maquina.setResultado("Piedra")
     juego.ganador.should == "¡Ganaste!"
   end
   

   it "Humano elige tijera, computadora elige piedra, gana piedra" do
     juego = Juego.new
     juego.humano.setResultado("Tijera")
     juego.maquina.setResultado("Piedra")
     juego.ganador.should == "¡Perdiste!"
   end

 it "Humano elige tijera, computadora elige papel, gana tijera" do
     juego = Juego.new
     juego.humano.setResultado("Tijera")
     juego.maquina.setResultado("Papel")
     juego.ganador.should == "¡Ganaste!"
   end

 it "Humano elige papel, computadora elige tijera, gana tijera" do
     juego = Juego.new
     juego.humano.setResultado("Papel")
     juego.maquina.setResultado("Tijera")
     juego.ganador.should == "¡Perdiste!"
   end

 it "Humano elige piedra, computadora elige tijera, gana piedra" do
     juego = Juego.new
     juego.humano.setResultado("Piedra")
     juego.maquina.setResultado("Tijera")
     juego.ganador.should == "¡Ganaste!"
   end

 it "Humano elige piedra, computadora elige papel, gana papel" do
     juego = Juego.new
     juego.humano.setResultado("Piedra")
     juego.maquina.setResultado("Papel")
     juego.ganador.should == "¡Perdiste!"
   end

 it "Humano elige piedra, computadora elige piedra, empatan" do
     juego = Juego.new
     juego.humano.setResultado("Piedra")
     juego.maquina.setResultado("Piedra")
     juego.ganador.should == "Empate"
   end

 it "Humano elige papel, computadora elige papel, empatan" do
     juego = Juego.new
     juego.humano.setResultado("Papel")
     juego.maquina.setResultado("Papel")
     juego.ganador.should == "Empate"
   end

 it "Humano elige tijera, computadora elige tijera, empatan" do
     juego = Juego.new
     juego.humano.setResultado("Tijera")
     juego.maquina.setResultado("Tijera")
     juego.ganador.should == "Empate"
   end

 it "Gana Humano, suma un punto" do
     juego = Juego.new
     juego.humano.setResultado("Tijera")
     juego.maquina.setResultado("Papel")
     juego.ganador
     juego.humano.puntaje.should == 1
   end

 it "Gana Humano Gana Humano, suma dos puntos" do
     juego = Juego.new
     juego.humano.setResultado("Tijera")
     juego.maquina.setResultado("Papel")
     juego.ganador
     juego.humano.setResultado("Papel")
     juego.maquina.setResultado("Piedra")
     juego.ganador
     juego.humano.puntaje.should == 2
   end

   it "Reinicio de juego, marcador 0 a 0" do
     juego = Juego.new
     juego.humano.setResultado("Tijera")
     juego.maquina.setResultado("Papel")
     juego.ganador
     juego.reiniciar
     juego.humano.puntaje.should == 0 && juego.maquina.puntaje.should == 0 
   end

end
