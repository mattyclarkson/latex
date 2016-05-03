FROM derjudge/archlinux:latest

RUN pacman --noconfirm --needed -S \
  make \
  git \
  texlive-most \
  texlive-lang \
  ghostscript
