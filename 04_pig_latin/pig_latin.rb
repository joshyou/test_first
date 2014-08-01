def translate(s)
    words = s.split(" ")
    words.map! do |word|
        if ["a", "e", "i", "o", "u"].include? (word[0])
            word += "ay"
        elsif word[0] == "q" && word[1] == "u"
            word = word.slice(2..-1) + word.slice(0..1) + "ay"
        elsif word[1] == "q" && word[2] == "u"
            word = word.slice(3..-1) + word.slice(0..2) + "ay"
        else
            c_count = 0
            for i in 0..word.length
                if ["a", "e", "i", "o", "u"].include? (word[i]) then
                    break
                end
                c_count += 1
            end
            word = word.slice(c_count..-1) + word.slice(0..c_count - 1) + "ay"
        end
    end
    words.join(" ")
end