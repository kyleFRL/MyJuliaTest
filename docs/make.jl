using MyJuliaTest
using Documenter

DocMeta.setdocmeta!(MyJuliaTest, :DocTestSetup, :(using MyJuliaTest); recursive=true)

makedocs(;
    modules=[MyJuliaTest],
    authors="Kyle Gao",
    repo="https://github.com/kyleFRL/MyJuliaTest.jl/blob/{commit}{path}#{line}",
    sitename="MyJuliaTest.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://kyleFRL.github.io/MyJuliaTest.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/kyleFRL/MyJuliaTest.jl",
    devbranch="main",
)
