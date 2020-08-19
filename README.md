# pyjulia-experiments

Testing the functionality of using Julia together with Python

## Setup

- Install Julia
  - If you have trouble invoking the `julia` command globally on Linux, try adding the path to your julia installation as an alias.
- Install PyJulia by running `Pkg.add("PyJulia")`
- The `pushfirst!(PyVector(pyimport("sys")."path"), "")` in the Julia code is crucial to running your own Python scripts and modules within a Julia script.

For more information on PyJulia and PyCall, see the official repository:
https://github.com/JuliaPy/PyCall.jl