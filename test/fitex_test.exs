defmodule ExitTest do
  use ExUnit.Case
  use FitEx

  test "defines an anonymous functions with one parameter named it" do
    incrementer = f it+1
    assert incrementer.(1) == 2
  end

  test "allows the definition of a function body in a do block" do
    multiline_fu = f do
      result = (it + 1)
      result * 2
    end
    assert multiline_fu.(1) == 4
  end
end
