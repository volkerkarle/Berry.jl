function gen_ticks(;step::Rational{Int64} = 1//2, N::Int = 2, min::Int=0)
    ticks  = Vector{Float64}()
    labels = Vector{LaTeXString}()
    for i in min:(N-1)
        push!(ticks, i*step*π)
        if i == 0
            push!(labels, L"0")
        else
            x = i*step
            if abs(x.num) == 1
                if abs(x.den) == 1
                    σ = sign(x.num)*sign(x.den)
                    if σ == 1
                        push!(labels, latexstring("\\pi"))
                    else
                        push!(labels, latexstring("-\\pi"))
                    end
                else
                    σ = sign(x.num)*sign(x.den)
                    if σ == 1
                        push!(labels, latexstring("\\pi/$(x.den)"))
                    else
                        push!(labels, latexstring("-\\pi/$(x.den)"))
                    end
                end
            else
                if abs(x.den) == 1
                    σ = sign(x.num)*sign(x.den)
                    if σ == 1
                        push!(labels, latexstring("$(x.num) \\pi"))
                    else
                        push!(labels, latexstring("-$(x.num) \\pi"))
                    end
                else
                    σ = sign(x.num)*sign(x.den)
                    if σ == 1
                        push!(labels, latexstring("$(x.num) \\pi / $(x.den)"))
                    else
                        push!(labels, latexstring("-$(x.num) \\pi / $(x.den)"))
                    end
                end
            end
        end
    end
    return ticks, labels
end

