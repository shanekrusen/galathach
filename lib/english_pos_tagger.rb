module Galathach
    class << self; attr_accessor :dict; end

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

    def self.preprocess
        @dict = {}
        File.readlines(File.dirname(__FILE__) + '/resources/mobypos.txt', :encoding => 'ISO-8859-1').each do |line|
            @word_pair = line.split("\\")
            @def = @word_pair[0]
            @def.downcase!
            @pos = @word_pair[1]
            @pos.strip!
            @pos = @pos.scan(/./)
            @dict[@def] = @pos
        end
    end

    Galathach::preprocess
end