# shell-escape.cr

shell-escape.cr is a [Crystal] library and command-line program to escape strings, so that it can be safely used in a shell command-line.

[Crystal]: https://crystal-lang.org

###### About the implementation

- Single quotes each argument.
- The resulted string should be used unquoted and is not intended for use in double quotes, nor in single quotes.

## Dependencies

- [Crystal]

## Installation

### Installing the command-line program

``` sh
make install
```

### Adding the library to your Crystal projects

1. Add the dependency to your `shard.yml`:

``` yaml
dependencies:
  shell-escape:
    github: alexherbo2/shell-escape.cr
```

2. Run `shards install`.

## Usage

### Command-line

```
shell-escape [argument...]
```

### Library

``` crystal
require "shell-escape"

ShellEscape.escape("kak")
# ⇒ 'kak'

ShellEscape.escape("kak", "a", "b")
# ⇒ 'kak' 'a' 'b'

ShellEscape.escape(["kak", "a", "b"])
# ⇒ 'kak' 'a' 'b'
```
