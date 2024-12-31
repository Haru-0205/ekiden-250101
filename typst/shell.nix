{ 
	pkgs ? import <nixpkgs> {
		inherit system;
	}, system ? builtins.currentSystem}:
pkgs.mkShell {
	pure = true;
	buildInputs = with pkgs; [
		git
		typst
	];
	shellHook = ''
		echo "Typst Develop Environment is Activated"
	'';
}
