[![Hex.pm Version](http://img.shields.io/hexpm/v/blake3.svg?style=flat)](https://hex.pm/packages/blake3)

# Blake3
Elixir bindings for the Rust Blake3 implementation.
These bindings use [`:rustler`](https://github.com/rusterlium/rustler) to connect to the hashing functions.


## Installation
The package can be installed by adding `blake3` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:blake3, "~> 0.2.0"}
  ]
end
```

run `mix deps.get` and `mix deps.compile` to pull and build the bindings

## Example Usage

```elixir
> Blake3.hash("foobarbaz")
#<<192, 154, 254, 224, 201, 243, 97 ...

> Blake3.new() |> Blake3.update("foo") |> Blake3.update("bar") |> Blake3.update("baz") |> Blake3.finalize()
#<<192, 154, 254, 224, 201, 243, 97 ...

> Blake3.hash("boom") |> Base.encode16(case: :lower)
#"a74bb4d1d4e44d0a2981d131762f45db9a211313d8e9f2cd151b4e673a35a6c1"
```

Documentation can found at [https://hexdocs.pm/blake3](https://hexdocs.pm/blake3).
