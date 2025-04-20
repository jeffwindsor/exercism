{
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-24.11-darwin";
  outputs = { nixpkgs, ... }:
  let
    pkgs = nixpkgs.legacyPackages.aarch64-darwin;
  in {
    devShell.aarch64-darwin = pkgs.mkShell {
    	name = "python 3.12";
      
    	packages = with pkgs; [
        (python312.withPackages(p: with p; [ python-lsp-server black pytest ]))
        bash-language-server
        shellcheck
        shfmt
        exercism
    	];

     	shellHook = ''

        function python_run(){
          local selection=$(fd -e py -E "*test*" | fzf)
          [[ -n $selection ]] && python3 $selection
        }
        alias pr="python_run"

        
        function python_test(){
          local selection=$(fd -e py "test" | fzf)
          [[ -n $selection ]] && pytest --disable-warnings $selection
        }
        alias pt="python_test"

        function exercism-submit(){
          clear
          local message="python $(basename $(pwd))"
          echo "$message"
          exercism submit
          git add --all
          git commit -m "$message"
          cd ..
        }
        alias es="exercism-submit"
        
        function exer-download(){
          exercism download --track=python --exercise=$1
        }
        alias ed="exer-download"

        function exer-edit(){
          hx $SOURCE_JEFF/exercism/python/$1/*.py
        }
        alias ee="exer-edit"


      
        echo -e "\e[1;94m == Python Development Environment =="
        python --version
        pylsp --version
        pytest --version
        echo -e "\e[0m"
    	'';
    };
  };
}
