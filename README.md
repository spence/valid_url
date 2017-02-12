# ValidUrl [![Build Status](https://travis-ci.org/spence/valid_url.svg?branch=master)](https://travis-ci.org/spence/valid_url) [![Hex pm](http://img.shields.io/hexpm/v/valid_url.svg?style=flat)](https://hex.pm/packages/valid_url)

Provides the best known regex for validating and extracting URLs.

It builds on amazing work done by [Diego Perini](https://gist.github.com/dperini/729294)
and [Mathias Bynens](https://mathiasbynens.be/demo/url-regex).

## Installation

The package can be installed as:

  1. Add `valid_url` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:valid_url, "~> 0.1.1"}]
    end
    ```

  2. Ensure `valid_url` is started before your application:

    ```elixir
    def application do
      [applications: [:valid_url]]
    end
    ```

## Usage

```elixir
ValidUrl.validate("https://www.spencercreasey.com") # => true
ValidUrl.validate("ftp://www.example.com") # => true
ValidUrl.validate("www.google.com") # => false
```

## Development

```
mix test
```

## License

MIT

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
