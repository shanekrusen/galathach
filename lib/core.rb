# Copyright 2017 @shanekrusen 
# License MIT (https://opensource.org/licenses/MIT)

require "galathach/version"
require "english_parser"
require "english_pos_tagger"
require "sentence_splitter"

module Galathach
  def translate(input)
    split = Galathach::split_sentence(input)
    tagged = Galathach::tag_pos(split)
  end
end
