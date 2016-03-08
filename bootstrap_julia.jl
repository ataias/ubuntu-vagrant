Pkg.update()
Pkg.add("BinDeps")
Pkg.build("BinDeps")
using BinDeps
Pkg.add("Blosc")
Pkg.build("Blosc")
using Blosc
Pkg.add("HDF5")
Pkg.build("HDF5")
using HDF5
Pkg.add("ArgParse")
