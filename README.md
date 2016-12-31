# 2016-nwtestsyspj-report

## How to setup TeX environment
With Ubuntu/16.04 Desktop.

### install Texlive
```
sudo apt install texlive-lang-japanese texlive-formats-extra
sudo apt install texlive-fonts-recommended texlive-fonts-extra
```

### install YaTeX

install YaTeX and configure yatex in `~/.emacs.el`.
```
sudo apt install yatex
```

### install latexmk
install latexmk and `~/.latexmkrc`.
```
sudo apt install latexmk
```

## Typeset

```
latexmk main.tex
```

## Cleaning

Remain final output (pdf).
```
latexmk -c
```

Delete all outputs.
```
latexmk -C
```
