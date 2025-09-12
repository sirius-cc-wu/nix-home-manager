{ lib, pkgs, ... }:
{
  home = {
    packages = with pkgs; [
      tree ripgrep fd bottom
      git gitui helix
      gnumake
      neovim
      plantuml
      mdbook mdbook-pdf mdbook-plantuml
      mdbook-toc mdbook-footnote
      zellij
      nushell
      nodejs fnm
      (texlive.combine { inherit (texlive) scheme-small collection-latexrecommended; })
      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-cjk-serif
      gcc12
      (pkgs.python313.withPackages (ppkgs: [
        ppkgs.pytest
        ppkgs.pip
        ppkgs.pandas
        ppkgs.openpyxl
        ppkgs.jinja2
        ppkgs.markdown
        ppkgs.lxml
        ppkgs.html5lib
        ppkgs.beautifulsoup4
        ppkgs.pypandoc
        ppkgs.xlsxwriter
      ]))
    ];

    # This needs to actually be set to your username
    username = "ccwu";
    homeDirectory = "/home/ccwu";

    # You do not need to change this if you're reading this in the future.
    # Don't ever change this after the first build.  Don't ask questions.
    stateVersion = "23.11";
  };
}
