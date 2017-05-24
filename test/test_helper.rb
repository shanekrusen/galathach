$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require "simplecov"
SimpleCov.start

require 'core'
require 'sentence_splitter'
require 'english_parser'
require 'english_pos_tagger'
require 'preprocess'

require 'minitest/autorun'
