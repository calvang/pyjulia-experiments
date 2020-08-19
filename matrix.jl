using PyCall
using LinearAlgebra

pushfirst!(PyVector(pyimport("sys")."path"), "")
pymatrix = pyimport("matrix")

matArray = pymatrix.read_csv("matrix.csv")
println("Input Matrix:")
println(matArray)
println("Determinant:")
println(det(matArray))
println("Trace:")
println(tr(matArray))
println("Square:")
squaredArray = matArray * matArray
println(squaredArray)
destroyedArray = squaredArray * squaredArray * det(squaredArray)
println("Assortment of various matrix operations:\n", destroyedArray)
println("Wow! That was fast!")
println("Writing to file...")
pymatrix.write_csv(destroyedArray, "output.csv")