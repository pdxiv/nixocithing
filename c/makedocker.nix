{ pkgs ? import <nixpkgs> { }
, pkgsLinux ? import <nixpkgs> { system = "x86_64-linux"; } }:

pkgs.dockerTools.buildImage {
  name = "hello-docker-c";
  config = { Cmd = [ "${import ./buildmyhello.nix}/bin/hello" ]; };
}
