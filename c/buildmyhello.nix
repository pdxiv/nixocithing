with import <nixpkgs> { };
stdenv.mkDerivation {

  name = "myhello";
  src = ./src;
  buildInputs = [ coreutils gcc ];

  configurePhase = ''
    declare -xp
  '';
  buildPhase = ''
    gcc "$src/hello.c" -o ./hello
  '';
  installPhase = ''
    mkdir -p "$out/bin"
    cp ./hello "$out/bin/"
  '';
}
