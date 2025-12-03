# picat.nvim

Syntax highlighting for the Picat language in NeoVim.

## Features

- Syntax highlighting for Picat (`.pi` files)
- Works with any color scheme
- Support for:
  - Keywords (`if`, `else`, `foreach`, `module`, etc.)
  - Variables (uppercase identifiers)
  - Built-in predicates
  - Operators (`=>`, `:=`, `#=`, etc.)
  - Comments (line and block)
  - Strings and atoms
  - Numbers
  - Predicate definitions and facts

## Installation

### Using [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  dir = "~/Projects/Picat/picat.nvim",
}
```

### Using [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use '~/Projects/Picat/picat.nvim'
```

### Using [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug '~/Projects/Picat/picat.nvim'
```

## Usage

Files with `.pi` extension will automatically be detected as Picat files and syntax highlighting will be applied using your current color scheme.

## Syntax Highlighting

The plugin defines syntax rules for:

- **Comments**: `%` (line comments) and `/* */` (block comments)
- **Keywords**: `do`, `else`, `elseif`, `end`, `foreach`, `if`, `in`, `index`, `max`, `min`, `module`, `not`, `notin`, `nt`, `private`, `protected`, `public`, `table`, `then`, `while`
- **Variables**: Uppercase identifiers (e.g., `X`, `Var`, `Result`)
- **Operators**: `=>`, `?=>`, `:=`, `..`, `::`, `#=`, `#<`, `#>`, and standard arithmetic/comparison operators
- **Built-in predicates**: Common predicates like `abs`, `append`, `atom`, `findall`, `head`, `tail`, `length`, `member`, `print`, `writeln`, etc.
- **Predicates**: Function definitions (lowercase identifier followed by `(`)
- **Facts**: Predicate declarations ending with `.`
- **Atoms**: Single-quoted strings and lowercase identifiers
- **Numbers**: Integer and floating-point literals
- **Strings**: Double-quoted strings

## Structure

```
picat.nvim/
├── ftdetect/picat.vim    # Filetype detection
├── syntax/picat.vim      # Syntax definitions
└── plugin/picat.vim      # Plugin initialization
```

## License

MIT
