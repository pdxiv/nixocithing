with import <nixpkgs> { };
stdenv.mkDerivation {
  name = "myhello";
  src = ./src;
  buildInputs = [ python3 ];
  installPhase = ''
    mkdir -p "$out/bin"    
    cp hello.py $out/bin
  '';

}
