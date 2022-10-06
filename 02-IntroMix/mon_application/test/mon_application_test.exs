defmodule MonApplicationTest do
  use ExUnit.Case
  doctest MonApplication

  test "greets the world" do
    assert MonApplication.hello() == :world
  end
end
