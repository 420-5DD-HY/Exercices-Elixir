# Instructions pour l'exercice sur les WebSockets

## Création d'un projet Phoenix

Commencez par générer une base de projet nommé `numbers` avec la commande [Phoenix new](https://hexdocs.pm/phoenix/Mix.Tasks.Phx.New.html) sans base de données.

	mix phx.new numbers --no-ecto

## Ajout du code pour utiliser des WebSockets sous forme de *canal*

Allez dans le nouveau dossier créé, puis ajoutez le code pour un *canal* avec le générateur de code [Phoenix gen](https://hexdocs.pm/phoenix/Mix.Tasks.Phx.Gen.Html.html)

	mix phx.gen.channel Room

Remarquez les instruction à la fin du processus :

	Add the socket handler to your `lib/numbers_web/endpoint.ex`, for example:

		socket "/socket", NumbersWeb.UserSocket,
		  websocket: true,
		  longpoll: false

	For the front-end integration, you need to import the `user_socket.js`
	in your `assets/js/app.js` file:

		import "./user_socket.js"



## Configuration de VS Code pour lancer l'application

Ouvrir le **dossier de projet** avec VSCode 

Créez un espace de travail via le menu `Fichier` > `Enregistrer l'espace de travail sous...`

Si ce n'est déjà fait, installez l'extension pour Elixir "JakeBecker.elixir-ls"

Dans le panneau **Exécuter et déboguer** (icone en triangle avec une bestiole), cliquez sur `Créer un ficher launch.json` sélectionnez ensuite le nom du projet, puis Projet Mix.

Modifiez le fichier généré pour y inclure le bloc suivant dans la section Configurations :

	{
		"type": "mix_task",
		"name": "mix (Phoenix)",
		"request": "launch",
		"task": "phx.server",
		"projectDir": "${workspaceRoot}"
	},
	
Dans le panneau **Exécuter et déboguer**, sélectionnez `mix (Phoenix)` dans le menu, puis cliquez sur le triangle

Vous pouvez ensuite lancer un browser (Edge ou autre) avec l'adresse http://localhost:4000/

La page d'accueil de Phoenix devrait apparaitre

## WebSocket Tester

Das un autre onglet, ouvrez le fichier TesteurWebSockets.html

Dans le champ adresse, mettez ws://localhost:4000/socket/websocket

