{ lib, pkgs, ... }:
{
  home = {
    packages = with pkgs; [
      tree ripgrep fd bottom
      gitui
      plantuml
      mdbook mdbook-pdf mdbook-plantuml
      mdbook-toc mdbook-footnote
      zellij
      nushell
      nodejs
      (pkgs.python313.withPackages (ppkgs: [
        ppkgs.pytest
        ppkgs.pip
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
