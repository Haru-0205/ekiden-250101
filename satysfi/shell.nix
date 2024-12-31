{ 
	pkgs ? import <nixpkgs> {
		inherit system;
	}, system ? builtins.currentSystem}:
pkgs.mkShell {
	pure = true;
	buildInputs = with pkgs; [
		git
		satysfi
	];
	shellHook = ''
		echo "SATySFi Develop Environment is Activated"
	'';
}
