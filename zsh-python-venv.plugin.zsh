# Description: make/list/source/remove a python virtual environment in

# ~/.venvs

# Maintainer: Patrick Messina
# Last Updated: 27 April 2019

export ZSH_PYTHON_VENV=$HOME/.venvs

function mkvenv {
  mkdir -p $HOME/.venvs
  python -m venv $HOME/.venvs/${1}
}

function lsvenv {
  ls -1 $HOME/.venvs
}

function svenv {
  source $HOME/.venvs/${1}/bin/activate
}

function rmvenv {
  rm -rf $HOME/.venvs/${1}
}

# Thank you jump plugin
# (https://github.com/robbyrussell/oh-my-zsh/blob/master/plugins/jump/jump.plugin.zsh)
_completevenv() {
 if [[ $(ls "${ZSH_PYTHON_VENV}" | wc -l) -gt 1 ]]; then
  reply=($(ls $ZSH_PYTHON_VENV/* | grep : | sed -E 's/(.*)\/([_a-zA-Z0-9\.\-]*):$/\2/g'))
 else
  if readlink -e "${ZSH_PYTHON_VENV}"/* &>/dev/null; then
   reply=($(ls "${ZSH_PYTHON_VENV}"))
  fi
 fi
}
compctl -K _completevenv svenv
compctl -K _completevenv rmvenv
