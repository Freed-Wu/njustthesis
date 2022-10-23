# njustthesis

Thesis template for [NJUST](https://njust.edu.cn).

## License

This work may be distributed and/or modified under the conditions of GPLv3+.

## Dependent

### Required

- A `LaTex` distribution. Such as
  [texlive](https://github.com/TeX-Live/texlive-source).
- [cnlogo](https://github.com/yuxtech/cnlogo/) provides the logos of many
  Chinese Universities.

## Customize

Default values:

```latex
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

**Note**: Add `{}` around the string which contain ' ','=', and','.

Example:

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
  % signature = \includegraphics{signature.pdf},
  judge-title = 教授,
}
\usepackage{subfiles}
\begin{document}

\maketitle

\frontmatter
\tableofcontents
\listoffigures
\listoftables

\mainmatter%
% \subfile{subfiles/chapter1.tex}

\backmatter%
% \bibliography{refs/main.bib}

\appendix
% \subfile{subfiles/appendix1.tex}

\end{document}
```

See more [examples](https://github.com/Freed-Wu?tab=repositories&q=njust&language=tex).

## Tips

```shell
texdoc njusthesis
```

## Todo

- [pandoc](https://github.com/jgm/pandoc) template for user can
  write markdown then convert it to latex.
- Change format from `ctexbook` to `ctexart` in order to use
  `beamerarticle.sty` more conveniently.

## FAQ

Q: Why another wheel?

A: Because former wheels cannot satisfy me. Some even only provide a
`*.tex` not `*.cls`. So crude.

Q: 100% compatible with official `docx` template?

A: If you find something unreasonable, welcome to pull request!

More questions see [issues](https://github.com/Freed-Wu/njustthesis/issues).

## Reference

- [thuthesis](https://github.com/tuna/thuthesis) May be the best thesis
  template among all Chinese theses. Any one can learn something from it. Such
  as literate programming, separation of content and presentation, etc.
