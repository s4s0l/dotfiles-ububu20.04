export PY_USER_BIN=$(python3 -c 'import site; print(site.USER_BASE + "/bin")')
export PATH=$PY_USER_BIN:$PATH

export PATH=~/.bin:$PATH

export PATH=~/.bin-opt:$PATH
