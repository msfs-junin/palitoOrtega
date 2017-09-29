Feature: Piedra Papel o Tijera

Scenario:Boton de inicio de juego
	Given Abro la pagina del juego
	Then tiene que aparecer "Iniciar Juego"

Scenario:Debe poder verse la opcion papel
	Given Una vez iniciado el juego
	Then tiene que aparecer "Papel"

Scenario:Debe poder elegirse la opcion papel	
	Given Una vez iniciado el juego
	When Una vez elegida la opcion papel
	Then tiene que aparecer "Opcion Elegida: Papel"

Scenario:Debe poder verse la eleccion de la computadora	
	Given Una vez iniciado el juego
	When Una vez elegida la opcion papel
	Then tiene que aparecer "Opcion Oponente: Piedra"

Scenario:Debe verse mensaje ganador
	Given Una vez iniciado el juego
	When Una vez elegida la opcion papel
	Then tiene que aparecer "Resultado: Gana Humano"

Scenario:Debe poder verse la opcion piedra
	Given Una vez iniciado el juego
	Then tiene que aparecer "Piedra"

Scenario:Debe poder verse la opcion tijera
	Given Una vez iniciado el juego
	Then tiene que aparecer "Tijera"

Scenario:Debe poder verse las opciones Piedra, Papel y Tijera
	Given Una vez iniciado el juego
	Then tiene que aparecer "Tijera"
	Then tiene que aparecer "Piedra"
	Then tiene que aparecer "Papel"

Scenario:Debe poder verse la opcion reset
	Given Una vez iniciado el juego
	Then tiene que aparecer "Reset"

Scenario:Debe verse mensaje perdedor
	Given Una vez iniciado el juego
	When Una vez elegida la opcion tijera
	Then tiene que aparecer "Resultado: Gana Computadora"


Scenario:Debe verse mensaje empate
	Given Una vez iniciado el juego
	When Una vez elegida la opcion piedra
	Then tiene que aparecer "Resultado: Empate"

