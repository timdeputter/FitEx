FitEx ![Build Status](https://travis-ci.org/Puddah/FitEx.svg?branch=master)
====

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
And anyway, I more or less created this to try out macros.

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

## License

Check [LICENSE](LICENSE) file for more information.
