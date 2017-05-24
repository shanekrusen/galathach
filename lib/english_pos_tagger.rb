require "preprocess"

module Galathach
    def self.tag_pos(input) 
        @input_tagged = {}
        input.delete("a")
        input.each do |word|
            word.downcase!
            if @dict[word]
                @input_tagged[word] = @dict[word]
            end

            # if @input_tagged[word].length > 1
            #     if @input_tagged[word].include?("N")
            # end
        end
        return @input_tagged
    end

    Galathach::preprocess
end