require 'sinatra'
require './lib/piedraPapelYTijera.rb'

get '/' do
	@@juego = Juego.new	
	@@juego.maquina.setResultadoRandom
    erb :principal
end

get '/juego' do
    erb :juego
end

post '/juego' do
    erb :juego
end

post '/jugadorA/:jugada' do
    jugada = params["jugada"]
	@@juego.humano.setResultado(jugada)    
    @opcionJugadorA = jugada
    @opcionJugadorB = @@juego.maquina.resultado
    @resultado =  @@juego.ganador
	@@juego.maquina.setResultadoRandom
    erb :juego
end

