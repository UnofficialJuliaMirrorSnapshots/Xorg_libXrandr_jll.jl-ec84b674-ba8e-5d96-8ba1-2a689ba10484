# Autogenerated wrapper script for Xorg_libXrandr_jll for aarch64-linux-gnu
export libXrandr

using Xorg_libXext_jll
using Xorg_libXrender_jll
using Xorg_randrproto_jll
using Xorg_util_macros_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"

# Relative path to `libXrandr`
const libXrandr_splitpath = ["lib", "libXrandr.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libXrandr_path = ""

# libXrandr-specific global declaration
# This will be filled out by __init__()
libXrandr_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libXrandr = "libXrandr.so.2"


"""
Open all libraries
"""
function __init__()
    global prefix = abspath(joinpath(@__DIR__, ".."))

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    append!.(Ref(PATH_list), (Xorg_libXext_jll.PATH_list, Xorg_libXrender_jll.PATH_list, Xorg_randrproto_jll.PATH_list, Xorg_util_macros_jll.PATH_list,))
    append!.(Ref(LIBPATH_list), (Xorg_libXext_jll.LIBPATH_list, Xorg_libXrender_jll.LIBPATH_list, Xorg_randrproto_jll.LIBPATH_list, Xorg_util_macros_jll.LIBPATH_list,))

    global libXrandr_path = abspath(joinpath(artifact"Xorg_libXrandr", libXrandr_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libXrandr_handle = dlopen(libXrandr_path)
    push!(LIBPATH_list, dirname(libXrandr_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(LIBPATH_list, ':')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

