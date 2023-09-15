function bin2dec(string::AbstractString)
    decimal = []
    # comprimento = length(string) - 1 
    comprimento = string |> length |> x -> (x - 1) # Julia é indexada pelo 1

    # n x 2^{7-0}
    for character in string
        # Pega cada caracter
        push!(decimal, parse(Int, character) * 2^comprimento)
        comprimento = comprimento - 1
    end
    decimal |> sum # sum(decimal)
end

function main()
    string::AbstractString = "00101000"
    println("$(string |> bin2dec)")
end

main()

# REFERÊNCIAS
# https://stackoverflow.com/questions/43944351/julia-piping-operator-with-more-than-one-argument
