def echo(word)
    word
end

def shout(word)
    word.upcase
end

def repeat(word, n=2)
    final = word
    (n - 1).times do
        final += (" " + word)
    end
    final
end

def start_of_word(word, n)
    word[0...n]
end

def first_word(string)
    words = string.split(" ")
    words[0]
end

def titleize(string)
    words = string.split(" ")
    words[0].capitalize!
    words.each do |word|
        case word
        when "a"
        when "and"
        when "the"
        when "over"
        else
            word.capitalize!
        end
    end
    words.join(" ")
end

puts titleize("the wheels passed through the night")