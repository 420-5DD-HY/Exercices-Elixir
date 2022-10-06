defmodule MonModule do
  def ma_fonction() do
    IO.puts("ma_fonction/0 a été appelée.")
  end
end

# En PowerShell ou autre console, utilisez la commande suivante :
#
# elixirc mon_module.ex
#
# pour compiler vers le fichier "Elixir.MonModule.beam"
# Ce fichier compilé sera automatiquement accessible pour les scripts du même répertoire
