class Book
    attr_reader :title
    def title=(name)
        words = name.split(" ")
        words.map! do |word|
            if ["do", "a", "an", "or", "and", "in", "of", "the"].include? (word)
                word
            else
                word.capitalize
            end
        end
        words[0].capitalize!
        @title = words.join(" ")
    end
end

