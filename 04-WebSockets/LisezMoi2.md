# Introduction au websockets

Commençons par créer un projet Phoenix, sans bd, en utilisant la commande 

    mix phx.new bonjour_sockets --no-ecto --no-live --no-dashboard --no-mailer

    Fetch and install dependencies? [Yn]
    Y

Changez ensuite de répertoire actif avec

    cd bonjour_sockets

On va maintenant créer un canal de communication **MonCanal**

    mix phx.gen.channel MonCanal
    * creating lib/bonjour_sockets_web/channels/mon_canal_channel.ex
    * creating test/bonjour_sockets_web/channels/mon_canal_channel_test.exs
    * creating test/support/channel_case.ex

    The default socket handler - BonjourSocketsWeb.UserSocket - was not found.

    Do you want to create it? [Yn]
    Y

Ensuite, dans le fichier `assets/js/app.js` , enlevez le marqueur de commentaire (//) de la dernière ligne du bloc pour activer la ligne `import "./user_socket.js"`

    // If you want to use Phoenix channels, run `mix help phx.gen.channel`
    // to get started and then uncomment the line below.
    // import "./user_socket.js"


## Installez les modules manquants

 mix deps.get
 
## En ligne de commande

Lancez ensuite le serveur avec la commande 

    mix phx.server

    Compiling 14 files (.ex)
    Generated bonjour_sockets app
    [warning] Phoenix is unable to create symlinks. Phoenix' code reloader will run considerably faster if symlinks are allowed. On Windows, the lack of symlinks may even cause empty assets to be served. Luckily, you can address this issue by starting your Windows terminal at least once with "Run as Administrator" and then running your Phoenix application.
    [info] Running BonjourSocketsWeb.Endpoint with cowboy 2.9.0 at 127.0.0.1:4000 (http)
    [debug] Downloading esbuild from https://registry.npmjs.org/esbuild-windows-64/-/esbuild-windows-64-0.14.29.tgz
    [info] Access BonjourSocketsWeb.Endpoint at http://localhost:4000
    [watch] build finished, watching for changes...

Si tout se passe comme prévu l'application web est disponible sur http://localhost:4000

Prenez le temps d'activer le **mode Développeur** dans le browser (F12). Les détails des communications sont visibles sous l'onglet Réseau


## Avec VS Code

Avec le plugin Elixir installé

Menu Run, sélectionnez : Open Configurations.

S'il n'existte pas de configuration pour Elixir Mix, faites "ajouter une configuration"

Pour utiliser Phoenix en débug, ajoutez le bloc suivant au fichier `launch.json`


        {
            "type": "mix_task",
            "name": "mix phx.server",
            "request": "launch",
            "task": "phx.server",
            "projectDir": "${workspaceRoot}"
        },

Ouvrez le panneau de débogage et vous devriez pouvoir choisir la configuration de démarrage "mix phx.server" à coté du bouton play (triangle) et lancer le débogage ensuite.

Si le démarrage semble bien fonctionner, vous pouvez tester avec la page web statique TesteurWebSockets.html dans le dossier de ce fichier LisezMoi.md.

Utilisez l'adresse ws://127.0.0.1:4000 dans le champ Target

La console du serveur devrait afficher 

    [info] GET /
    [debug] Processing with BonjourSocketsWeb.PageController.index/2
    Parameters: %{}
    Pipelines: [:browser]
    [info] Sent 200 in 228ms

Pendant que la page affiche :

    ERROR:undefined

    DISCONNECTED



