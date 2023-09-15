function bin2dec(string::AbstractString)
    # comprimento = length(string) - 1 
    comprimento::Int8 = string |> length |> x -> (x - 1) # Julia é indexada pelo 1
    decimal::Int8 = 0

    # n x 2^{7-0}
    for character in string
        # decimal = decimal + parse(Int8, character) * 2^comprimento
        # decimal = decimal + character |> x -> parse(Int8, x) |> x -> (x * 2^comprimento) #|> x -> (x + decimal)
        decimal = character |> x -> parse(Int8, x) |> x -> (x * 2^comprimento) |> x -> sum(decimal + x)
        comprimento = comprimento - 1
    end
    decimal
end

function main()
    string::AbstractString = "00101000"
    println("$(string |> bin2dec)")
end

main()

# REFERÊNCIAS
# https://stackoverflow.com/questions/43944351/julia-piping-operator-with-more-than-one-argument
