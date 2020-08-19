# script for setting the PyJulia Python path to the venv folder

ENV["PYTHON"] = "~/Projects/pyjulia-experiments/env/bin/python3"
Pkg.build("PyCall")