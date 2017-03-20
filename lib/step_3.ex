defmodule ElixirWorksample.Step3 do    

    def add_to_list(list, word) do
        list ++ [{word, String.length(word)}]
    end

    def input(endlist, []) do
        endlist
    end

    def input(endlist, list) do
        endlist = add_to_list(endlist, Enum.min_by(list, fn(x) -> String.length(x) end))
        list = list -- [Enum.min_by(list, fn(x) -> String.length(x) end)]
        input(endlist, list)
    end

    def uniq_words(string) when is_bitstring(string) do
       list = String.split(string, [" ", ","])
       list = Enum.uniq(list)

       Enum.each(list, fn(x) -> IO.puts("[" <> x <> "]") end)
       list = list -- [Enum.min_by(list, fn(x) -> String.length(x) end)]
       
       endlist = []
       endlist = input(endlist, list)

       IO.puts("Endlist : ")
       Enum.each(endlist, fn(x) -> IO.puts("Name : " <> elem(x, 0) <> " | Size : " <> to_string(elem(x, 1))) end)
       endlist
    end

    def uniq_words(_) do
        "unexpected argument."
    end

    def uniq_words() do
        "hello world!"
    end
end