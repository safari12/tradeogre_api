defmodule Tradeogre.APITest do
  use ExUnit.Case
  doctest Tradeogre.API

  test "greets the world" do
    assert Tradeogre.API.hello() == :world
  end
end
