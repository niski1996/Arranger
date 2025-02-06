defmodule ArrangerTest do
  use ExUnit.Case
  doctest Arranger

  test "greets the world" do
    assert Arranger.hello() == :world
  end
end
