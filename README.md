# LaTeX Docker container

This container derives from
[derjudge/archlinx](https://hub.docker.com/r/derjudge/archlinux/) so that the
image has the latest [Arch Linux](https://www.archlinux.org/) packages. It then
installs the
[`texlive-most`](https://www.archlinux.org/groups/x86_64/texlive-most/) and
[`texlive-lang`](https://www.archlinux.org/groups/x86_64/texlive-lang/) packages
to provide the latest
[TeX Live](https://wiki.archlinux.org/index.php/TeX_Live) environment for
building LaTeX documents. Use `latexmk` in your build script.

## Packages

  - [`make`](https://www.archlinux.org/groups/x86_64/make/)
  - [`git`](https://www.archlinux.org/groups/x86_64/git/)
  - [`texlive-most`](https://www.archlinux.org/groups/x86_64/texlive-most/)
  - [`texlive-lang`](https://www.archlinux.org/groups/x86_64/texlive-lang/)
  - [`ghostscript`](https://www.archlinux.org/groups/x86_64/ghostscript/)

## GitLab

The following `.gitlab-ci.yml` file will build a `main.pdf` (assuming that your
entry document is `main.tex`.

```yaml
pdf:
  image: mattyclarkson/latex
  tags:
    - shared
    - docker
    - linux
  script:
    - latexmk -pdf -halt-on-error -file-line-error main.tex
  artifacts:
    paths:
      - main.pdf
```
