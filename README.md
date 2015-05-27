FitEx
====

FitEx is a Micro-Module which provides a bit of sugar for function definitions.
If you need an anonymous functions which takes a single argument like this:

```elixir
fn param -> param + 1 end
```

you can use the short version:

```elixir
f it + 1
```
## Installation

Add rendezvous as a dependency in your mix.exs file:

```elixir
  defp deps do
    [
      FitEx: "~> 0.0.1"
    ]
  end
```

and run `mix deps.get`.
