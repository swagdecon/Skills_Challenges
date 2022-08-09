def make_snippet(string)
    words = string.split(" ")
    return words[0..4].join(" ") + " ..."
end