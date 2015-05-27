defmodule FitEx do

  defmacro __using__(_opts) do
    quote do
      import FitEx
    end
  end

  defmacro f(do: expression) do
    quote do
      fn param ->
        var!(it) = param
        unquote(expression) 
      end
    end
  end

  defmacro f(expression) do
    quote do
      fn param ->
        var!(it) = param
        unquote(expression) 
      end
    end
  end

end
