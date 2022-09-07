defmodule MesPatterns do
  def ma_fonction([]), do: "vide"

  def ma_fonction([a|["coucou"]]), do: "fini par coucou"
    def ma_fonction(["allo"|b]), do: "est allo" # fonctionne même si la suite est vide

  def ma_fonction([a,b,c])when b < c, do: "2e élément est plus petit que le 3e"
  def ma_fonction([a|b]), do: "autre liste"
end
