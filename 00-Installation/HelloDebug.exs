# Petit script Elixir juste pour tester l'installation
#
# (CC BY-SA) Stéphane Denis
#
# Pour l'exécuter lancez le terminal Elixir (touche/menu Windows, tappez elixir, puis enter)
# Ce raccourci du menu Windows correspond généralement à
# "C:\Program Files\Erlang OTP\bin\werl.exe" -env ERL_LIBS "C:\Program Files (x86)\Elixir\lib" -user Elixir.IEx.CLI -extra --no-halt
#
# ... ou sur une console PowerShell ou autre, lancer la commande iex.bat (notez que de n'utiliser juste "iex" ne fonctionnera pas en PowerShell)
#
# Une fois lancé, changez le répertoire de travail avec la commande
#
# File.cd("/votre/dossier_de_travail/ici")
#
# Ouvrez ensuite ce fichier en le compilant
#
# c("HelloDebug.exs")
#
# Vous devinez qu'un texte s'affiche.
# La deuxième ligne sert juste à lancer le moniteur de processus

IO.puts("Bravo! l'installation fonctionne.")

:debugger.start()
