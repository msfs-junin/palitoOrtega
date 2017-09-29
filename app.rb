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
    @opcionJugadorA = "Papel"
    @opcionJugadorB = "Piedra"
    @resultado = "Gana Humano"
    erb :juego
end


