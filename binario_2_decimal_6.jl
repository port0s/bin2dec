function input(prompt::AbstractString="")
    prompt |> print # print(prompt)
    return chomp(readline())
end


function verifica_string(string::AbstractString)
    for character in string
        if !(isdigit(character) && character == '0' || character == '1')
            println("Digite apenas os números 0 ou 1")
            return ""
        end
    end
    string
end

# Como decimal == Int8
# o maior valor binário aceito é
# 01111111 base 2 == 127 base 10
function bin2dec(string::AbstractString)
    comprimento::Int8 = length(string) - 1
    decimal::Int8 = 0

    # n x 2^{7-0}
    # o decimal + n x 2^{7-0} == soma dos números para dar o valor total
    for character in string
        decimal = decimal + parse(Int8, character) * 2^comprimento
        comprimento = comprimento - 1
    end

    decimal
end

function main()
    string = input("Escreva um texto apenas com 0's ou 1's? ") |> verifica_string
    isempty(string) ? false : string |> bin2dec |> println
end

main()

# REFERÊNCIAS
# https://stackoverflow.com/questions/43944351/julia-piping-operator-with-more-than-one-argument
