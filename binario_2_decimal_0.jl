function main()
    string::AbstractString = "00101000"
    parse(Int, string, base=2) |> println
end

main()
