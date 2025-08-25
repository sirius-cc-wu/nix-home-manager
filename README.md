# Nix home manager

See https://github.com/Evertras/simple-homemanager.

```
nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
nix-channel --update
nix-shell '<home-manager>' -A install
make
```
