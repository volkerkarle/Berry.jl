using Berry, Documenter 

makedocs(
    format = Documenter.HTML(prettyurls = false),
    modules = [Berry],
    authors = "Volker Karle",
    sitename = "Berry.jl",
    pages = [
        "Home" => "index.md",
    ],
)

deploydocs(
           repo = "github.com/volkerkarle/Berry.jl.git",
          )
