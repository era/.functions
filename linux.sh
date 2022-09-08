alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

init_conda() {
  eval "$(/home/era/miniconda3/bin/conda shell.zsh hook)"
}
