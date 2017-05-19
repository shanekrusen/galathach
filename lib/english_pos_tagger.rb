module Galathach
    class << self; attr_accessor :dict; end

    def self.tag_pos(input) 
        @input_tagged = {}
        input.delete("a")
        input.each do |word|
            if @dict[word.downcase]
                @input_tagged[word.downcase] = @dict[word.downcase]
            end
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
            @dict[@def] = @pos
        end
    end

    Galathach::preprocess
end