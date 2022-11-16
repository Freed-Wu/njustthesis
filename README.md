# njustthesis

[![pre-commit.ci status](https://results.pre-commit.ci/badge/github/Freed-Wu/njustthesis/master.svg)](https://results.pre-commit.ci/latest/github/Freed-Wu/njustthesis/master)
[![github/workflow](https://github.com/Freed-Wu/njustthesis/actions/workflows/main.yml/badge.svg)](https://github.com/Freed-Wu/njustthesis/actions)

[![github/downloads](https://shields.io/github/downloads/Freed-Wu/njustthesis/total)](https://github.com/Freed-Wu/njustthesis/releases)
[![github/downloads/latest](https://shields.io/github/downloads/Freed-Wu/njustthesis/latest/total)](https://github.com/Freed-Wu/njustthesis/releases/latest)
[![github/issues](https://shields.io/github/issues/Freed-Wu/njustthesis)](https://github.com/Freed-Wu/njustthesis/issues)
[![github/issues-closed](https://shields.io/github/issues-closed/Freed-Wu/njustthesis)](https://github.com/Freed-Wu/njustthesis/issues?q=is%3Aissue+is%3Aclosed)
[![github/issues-pr](https://shields.io/github/issues-pr/Freed-Wu/njustthesis)](https://github.com/Freed-Wu/njustthesis/pulls)
[![github/issues-pr-closed](https://shields.io/github/issues-pr-closed/Freed-Wu/njustthesis)](https://github.com/Freed-Wu/njustthesis/pulls?q=is%3Apr+is%3Aclosed)
[![github/discussions](https://shields.io/github/discussions/Freed-Wu/njustthesis)](https://github.com/Freed-Wu/njustthesis/discussions)
[![github/milestones](https://shields.io/github/milestones/all/Freed-Wu/njustthesis)](https://github.com/Freed-Wu/njustthesis/milestones)
[![github/forks](https://shields.io/github/forks/Freed-Wu/njustthesis)](https://github.com/Freed-Wu/njustthesis/network/members)
[![github/stars](https://shields.io/github/stars/Freed-Wu/njustthesis)](https://github.com/Freed-Wu/njustthesis/stargazers)
[![github/watchers](https://shields.io/github/watchers/Freed-Wu/njustthesis)](https://github.com/Freed-Wu/njustthesis/watchers)
[![github/contributors](https://shields.io/github/contributors/Freed-Wu/njustthesis)](https://github.com/Freed-Wu/njustthesis/graphs/contributors)
[![github/commit-activity](https://shields.io/github/commit-activity/w/Freed-Wu/njustthesis)](https://github.com/Freed-Wu/njustthesis/graphs/commit-activity)
[![github/last-commit](https://shields.io/github/last-commit/Freed-Wu/njustthesis)](https://github.com/Freed-Wu/njustthesis/commits)
[![github/release-date](https://shields.io/github/release-date/Freed-Wu/njustthesis)](https://github.com/Freed-Wu/njustthesis/releases/latest)

[![github/license](https://shields.io/github/license/Freed-Wu/njustthesis)](https://github.com/Freed-Wu/njustthesis/blob/master/LICENSE)
![github/languages](https://shields.io/github/languages/count/Freed-Wu/njustthesis)
![github/languages/top](https://shields.io/github/languages/top/Freed-Wu/njustthesis)
![github/directory-file-count](https://shields.io/github/directory-file-count/Freed-Wu/njustthesis)
![github/code-size](https://shields.io/github/languages/code-size/Freed-Wu/njustthesis)
![github/repo-size](https://shields.io/github/repo-size/Freed-Wu/njustthesis)
![github/v](https://shields.io/github/v/release/Freed-Wu/njustthesis)

Thesis template for [NJUST](https://njust.edu.cn).

<!-- mdformat-toc start --slug=github --no-anchors --maxlevel=6 --minlevel=2 -->

- [Install](#install)
  - [Use Package Manager](#use-package-manager)
  - [Install From Source Code](#install-from-source-code)
  - [Install From Release](#install-from-release)
  - [Ensure You Have Installed This Package Successfully](#ensure-you-have-installed-this-package-successfully)
- [Usage](#usage)

<!-- mdformat-toc end -->

## Install

### Use Package Manager

```sh
tlmgr install njustthesis
```

### Install From Source Code

```sh
git clone --depth=1 https://github.com/Freed-Wu/njustthesis
cd njustthesis
l3build install
```

### Install From Release

Download `njustthesis.tds.zip` from
[Release](https://github.com/Freed-Wu/njustthesis/releases/latest).
Then unzip it to correct path.

```sh
$ gh release list -RFreed-Wu/njustthesis
0.0.1                   Latest  (0.0.1)   about 24 minutes ago
...
$ gh release download 0.0.1 -RFreed-Wu/njustthesis
$ ls
 njustthesis-ctan.zip   njustthesis.tds.zip
$ kpsewhich --var-value TEXMFHOME
/home/wzy/texmf
$ mkdir -p $(kpsewhich --var-value TEXMFHOME)
$ mv njustthesis.tds.zip $(kpsewhich --var-value TEXMFHOME)
$ unzip njustthesis.tds.zip
Archive:  njustthesis.tds.zip
inflating: doc/latex/njustthesis/README.md
inflating: doc/latex/njustthesis/njustthesis.pdf
inflating: tex/latex/njustthesis/njustthesis.cls
inflating: source/latex/njustthesis/njustthesis.ins
inflating: source/latex/njustthesis/njustthesis.dtx
$ texhash
texhash: /etc/texmf: directory not writable. Skipping...
texhash: /usr/local/share/texmf: directory not writable. Skipping...
texhash: /usr/share/texmf: directory not writable. Skipping...
texhash: /usr/share/texmf-dist: directory not writable. Skipping...
texhash: /var/lib/texmf: directory not writable. Skipping...
texhash: Done.
```

### Ensure You Have Installed This Package Successfully

```sh
$ kpsewhere njustthesis.cls
/home/wzy/texmf/tex/latex/njustthesis/njustthesis.cls
```

## Usage

See [config](docs/config.md).
