using Documenter, Example

makedocs(
    format = Documenter.HTML(prettyurls = false, assets = ["assets/favicon.ico"]),
    modules = [Berry],
    authors = "Volker Karle",
    sitename = "Berry.jl",
    pages = [
        "Home" => "index.md",
    ],
)
deploydocs(repo = "github.com/volkerkarle/Berry.jl.git", push_preview = true)
