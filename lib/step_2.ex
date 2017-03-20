defmodule ElixirWorksample.Step2 do
    def i_am([]) do
        "empty list"    
    end

    def i_am([data]) do
        Enum.each(data, fn(x) -> x end)
        "list with one argument"
    end

    def i_am(data) when is_list(data) do
        "list"
    end

    def i_am(data) when is_integer(data) do
        "int"
    end

    def i_am(data) when is_bitstring(data) do
        "string"
    end

    def i_am(data) do
        Enum.each(data, fn(x) -> x end)
    	"undefined"
    end

    def i_am() do
        "Nothing"
    end
end