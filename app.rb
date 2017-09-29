require 'sinatra'
require './lib/piedraPapelYTijera.rb'

get '/' do
    erb :principal
end

get '/juego' do
    erb :juego
end

post '/juego' do
    erb :juego
end

post '/jugadorAPapel' do
    juego = Juego.new
	juego.humano.setResultado("Papel")
    juego.maquina.setResultado("Piedra")
    @opcionJugadorA = "Papel"
    @opcionJugadorB = "Piedra"
    @resultado =  juego.ganador
    erb :juego
end

post '/jugadorATijera' do
    juego = Juego.new
	juego.humano.setResultado("Tijera")
    juego.maquina.setResultado("Piedra")
    @opcionJugadorA = "Tijera"
    @opcionJugadorB = "Piedra"
    @resultado =  juego.ganador
    erb :juego
end

post '/jugadorAPiedra' do
    juego = Juego.new
	juego.humano.setResultado("Piedra")
    juego.maquina.setResultado("Piedra")
    @opcionJugadorA = "Piedra"
    @opcionJugadorB = "Piedra"
    @resultado =  juego.ganador
    erb :juego
end
