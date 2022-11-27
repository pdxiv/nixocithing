{ pkgs ? import <nixpkgs> { }
, pkgsLinux ? import <nixpkgs> { system = "x86_64-linux"; }
}:

pkgs.dockerTools.buildImage {
  name = "hello-docker";  
  config = {        
    Cmd = ["${pkgs.callPackage ./buildmyhello.nix {}}/bin/hello"];
  };
}
