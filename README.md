FitEx [![Build Status](https://travis-ci.org/Puddah/Rendezvous.svg?branch=master)](https://travis-ci.org/Puddah/Rendezvous)
==========

FitEx is a little Macro-Module which provides a alternative way for function definitions.
If you need an anonymous functions which takes a single argument like this:

```elixir
fn param -> param + 1 end
```

you can use the short version:

```elixir
f it + 1
```

I know, I know... You could use &(&1+1). That's right, but maybe the provided syntax is a little bit more readable.
And anyway, I more or less created this to try out macros, inspired by the Kotlin lambda syntax: http://kotlinlang.org/docs/reference/lambdas.html



## Installation

Add FitEx as a dependency in your mix.exs file:

```elixir
  defp deps do
    [
      FitEx: "~> 0.0.1"
    ]
  end
```

and run `mix deps.get`.

## Usage

By using FitEx you can write one parameter functions with the f macro. The parameter is named 'it'. 

```elixir
defmodule SomeModule do
  use FitEx
  
  def some_function do
    # One liner
    func = f it + 1

    # or multi line function-body
    func = f do
      it_plus_one = it + 1
      it_plus_one * 2
    end
  end
  
end
```

## License

Check [LICENSE](LICENSE) file for more information.
