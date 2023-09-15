function verifica_string(string::AbstractString)
    for character in string
        if !(isdigit(character) && character == '0' || character == '1')
            println("Digite apenas os números 0 ou 1")
            return ""
        end
    end
    string
end

function input(prompt::AbstractString="")
    prompt |> print # print(prompt)
    return chomp(readline())
end

function main()
    # string = verifica_string(input("Escreva uma string? "))
    string = input("Escreva uma string? ") |> verifica_string
    isempty(string) ? false : parse(Int, string, base=2) |> println
end

main()
