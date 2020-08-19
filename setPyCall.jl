# script for setting the PyJulia Python path to the venv folder

ENV["PYTHON"] = "/home/calvang/Projects/pyjulia-experiments/env/bin/python3"
# packages to rebuild
Pkg.build("PyCall")