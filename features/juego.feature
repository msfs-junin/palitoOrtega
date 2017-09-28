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
   When Una vez elegido ver resultado
	Then tiene que aparecer "Mensaje: Gana Humano"


