njustthesis
===========

A template for NJUST thesis.

Dependent
---------

1. A LaTex distribution. Such as [texlive].
2. [cnlogo]: provide Chinese university logos. Include the logo of Nanjing
    University of Science and Technology.

Install
-------

``` {.zsh}
# for GNU
cd ~/.texlive/texmf-var/tex/latex
# for Windows
cd C:\Program Files\texlive\texmf-local\tex\latex
git clone git@github.com:Freed-Wu/njustthesis.git
latexmk -pvc- njustthesis/njustthesis.ins
# for GNU
texhash ~/.texlive/texmf-var
# for Windows
texhash
```

Usage
-----

Examples:
[Freed-Wu/random-signal-process-experiment](https://github.com/Freed-Wu/random-signal-process-experiment)

Customize
---------

Default values:

``` {.tex}
\njustsetup{
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
  year = \the\year,
  month = \the\month,
  abstract-prefix = 毕业论文,
  title* = ,
  subtitle* = ,
  header-title = 本科毕业设计说明书,
}
```

**Note**: Add curly brace around the string which contain ' ', '=', and ','.

## Todo ##

Support [pandoc](https://github.com/jgm/pandoc).

## Q & A ##

Q: Why another wheel?

A: Because former wheels are too old to maintain.

Q: 100% compatible with official `docx` template?

A: If you find something unreasonable, welcome to pull request!

More questions see [issues](https://github.com/Freed-Wu/njustthesis/issues).

  [cnlogo]: https://github.com/Freed-Wu/cnlogo
  [texlive]: https://github.com/TeX-Live/texlive-source
