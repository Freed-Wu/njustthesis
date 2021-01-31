njustthesis
===========

A template for NJUST thesis.

Dependent
---------

1. A LaTex distribution. Such as [texlive].
2. [cnlogo]: provide Chinese university logos. Include the logo of Nanjing
    University of Science and Technology.

Compile
-------

```shell
git clone git@github.com:Freed-Wu/njustthesis.git
latexmk -pvc- njustthesis/njustthesis.ins
```

You will get a file named `njustthesis.cls`.

If you don't wanna install the package, make sure `njustthesis.cls` and your
`main.tex` in a same path in order to latex engine can find it.

Install
-------

Move `njustthesis.cls` in the path of your tex distribution store its
packages, and update.

And make sure you have installed `cnlogo`.

### GNU

```shell
mv njustthesis.cls ~/.texlive/texmf-var/tex/latex
texhash ~/.texlive/texmf-var
```

### Windows

```shell
move njustthesis.cls C:\Program Files\texlive\texmf-local\tex\latex
texhash
```

Customize
---------

Default values:

``` {.tex}
\njustsetup{
  logo = \njustwhole[njust][0.5], % depend on cnlogo
  cover-title = 毕业设计说明书,
  author = 佚名,
  id = 916101630000,
  department = 电子工程与光电技术学院,
  discipline = 电子工程与光电技术,
  title = ,
  subtitle = ,
  supervisor = 张三,
  associate-supervisor = 李四,
  judge = 王五,
  supervisor-title = 教授,
  associate-supervisor-title = 教授,
  judge-title = 教授,
  year = \the\year, % the time of paper
  month = \the\month,
  day = \the\day,
  abstract-prefix = 毕业论文,
  signature = ,
  signature* = , % star means english
  abstract-prefix = 毕业论文,
  title* = ,
  subtitle* = ,
  header-title = 本科毕业设计说明书,
}
```

**Note**: Add curly brace around the string which contain ' ', '=', and ','.

Usage
-----

Examples:

```latex
\documentclass{njustthesis}
\njustsetup{%
  author = 张不三,
  id = 916101630000,
  discipline = 电子信息工程,
  title = {论文名字带逗号,或空格 },
  subtitle = 所以加花括弧括起来,
  title* = {English name},
  supervisor = ,
  supervisor-title = 教授,
  judge = ,
  % signature = \includegraphics{signature}, % if you have signature.pdf
  judge-title = 教授,
}
\usepackage{subfiles}
\begin{document}

\maketitle

\frontmatter
\tableofcontents
\listoffigures
\listoftables

\mainmatter% body
% \subfile{subfiles/chapter1.tex} % make sure subfiles/chapter1.tex exist

\backmatter%
% \bibliography{refer.bib} % if you have references, you can export bib file
% from google scholar, etc.

\end{document}
```

More examples can see my homework.
All my homework are write with this package.

## Todo ##

Support [pandoc](https://github.com/jgm/pandoc).

## Q & A ##

Q: Why another wheel?

A: Because former wheels are too old to maintain.

Q: 100% compatible with official `docx` template?

A: If you find something unreasonable, welcome to pull request!

More questions see [issues](https://github.com/Freed-Wu/njustthesis/issues).

  [cnlogo]: https://github.com/yuxtech/cnlogo
  [texlive]: https://github.com/TeX-Live/texlive-source
