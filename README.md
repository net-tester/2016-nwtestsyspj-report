# 2016-nwtestsyspj-report

## How to setup TeX environment
With Ubuntu/16.04 Desktop.

### install Texlive
```
sudo apt install texlive-lang-cjk texlive-formats-extra
sudo apt install texlive-fonts-recommended texlive-fonts-extra
```

### install latexmk
See [Latexmk \- TeX Wiki](https://texwiki.texjp.org/?cmd=read&page=Latexmk)

install latexmk
```
sudo apt install latexmk
```
with `~/.latexmkrc`.
```perl
#!/usr/bin/env perl
$latex            = 'uplatex -synctex=1 -halt-on-error';
$latex_silent     = 'uplatex -synctex=1 -halt-on-error -interaction=batchmode';
$bibtex           = 'upbibtex';
$biber            = 'biber --bblencoding=utf8 -u -U --output_safechars';
$dvipdf           = 'dvipdfmx %O -o %D %S';
$makeindex        = 'mendex %O -o %D %S';
$max_repeat       = 5;
$pdf_mode         = 3;
$pvc_view_file_via_temporary = 0;
$pdf_previewer    = 'xdg-open';
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

## Emacs settings
See [YaTeX - TeX Wiki](https://texwiki.texjp.org/?YaTeX).

### install YaTeX

install YaTeX and configure yatex in `~/.emacs.el`.
```
sudo apt install yatex
```

### edit emacs config

Set `tex-command` to use `latexmk` (and `uplatex`).
Set `tex-pdfview-command` to `evince` to preview output(pdf).

### SyncTex settings (Linux + emacs/yatex + evince)

Download `fwdevince` (from [Evince/fwdevince/Python - TeX Wiki](https://texwiki.texjp.org/?Evince%2Ffwdevince%2FPython))

Notice: Use Python3 with shebang line
```
#!/usr/bin/env python3
```

install
```
chmod +x fwdevince
sudo cp -p fwdevince /usr/local/bin
sudo ln -s /usr/local/bin/fwdevince /usr/local/bin/invevince
```

and edit `.emacs.el` (see: [うぶつん: SyncTeXの設定。 Emacs\(YaTeX\) \+ Evince](https://ubutun.blogspot.jp/2012/05/synctex-emacsyatex-evince.html))

Jump!
- forward search (from emacs to evince) : `C-c e` (`M-x evince-forward-search`)
- inverse search (from evince to emacs) : Control + Left-click
