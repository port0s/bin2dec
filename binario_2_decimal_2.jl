function bin2dec(string::AbstractString)
    decimal = []
    comprimento = length(string) - 1 # Julia é indexada pelo 1

    # n x 2^{7-0}
    for character in string
        # Pega cada caracter
        push!(decimal, parse(Int, character) * 2^comprimento)
        comprimento = comprimento - 1
    end
    sum(decimal)
end

function main()
    string::AbstractString = "00101000"
    # parse(Int, string, base = 2) |> println
    println("$(bin2dec(string))")
end

main()


