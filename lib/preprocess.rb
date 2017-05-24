module Galathach
	class << self; attr_accessor :dict; end

	private

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
end