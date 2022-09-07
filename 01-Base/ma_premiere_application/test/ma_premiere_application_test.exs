defmodule MaPremiereApplicationTest do
  use ExUnit.Case
  doctest MaPremiereApplication

  test "greets the world" do
    assert MaPremiereApplication.hello() == :world
  end
end
