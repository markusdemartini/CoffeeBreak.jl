using CoffeeBreak
using Documenter

DocMeta.setdocmeta!(CoffeeBreak, :DocTestSetup, :(using CoffeeBreak); recursive=true)

makedocs(;
    modules=[CoffeeBreak],
    authors="Markus DeMartini",
    repo="https://github.com/markusdemartini/CoffeeBreak.jl/blob/{commit}{path}#{line}",
    sitename="CoffeeBreak.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://markusdemartini.github.io/CoffeeBreak.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/markusdemartini/CoffeeBreak.jl",
    devbranch="main",
)
