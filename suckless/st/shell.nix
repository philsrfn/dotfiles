with import <nixpkgs> { };

mkShell {
  buildInputs = [
    xorg.libX11 xorg.libXinerama xorg.libXft pkg-config fontconfig freetype harfbuzz ncurses
  ];
  shellHook = ''
    zsh
  '';
}

