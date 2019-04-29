# zsh-python-venv

Create python virtual environments on the fly.

# Installation

Clone repository to `$HOME/.oh-my-zsh/custom/plugins/`.

Then add to the plugins in `.zshrc`.

```zsh
plugins=(zsh-python-venv)
```

## Usage

| Command                | Description                   |
|------------------------|-------------------------------|
| `mkvenv <environment>` | Create a virtual environment  |
| `lsvenv`               | list out current environments |
| `rmvenv <environment>` | remove specified environment  |
| `svenv <environment>`  | source specified environment  |
