# 42 Header
1337 (Khouribga)

# Showcase
![Screenshot](screen1.png)

# Description
42 standard header for nvim/lua editor.

# UNIX Setup
Packer is recommended:

```
use 'abellaismail7/42header.nvim'
```

I assume that you have two env variables:

```
$USER="bella" # For your username
$MAIL="bella@example.com" # For your mail
```

# Usage
In Normal mode you can use `:Ftheader`.

you might want to map it to a convient key.

```
vim.api.nvim_set_keymap('n', '<leader>h', ': Ftheader', {noremap = true})
```

For auto header update `Updated : ...` you should add this to your config

```
vim.cmd("autocmd BufWritePre * call :Ftupdate")
```

For manual update:

```
:Ftupdate
```
