module MyJuliaTest

using ForwardDiff

include("refer.jl")

deri_of_double(x) = ForwardDiff.derivative(x->double(x), x)

export double, deri_of_double

end
