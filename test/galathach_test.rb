require 'test_helper'

class GalathachTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Galathach::VERSION
  end

  def test_it_will_split_sentence
    input = "This is a test"
    assert_equal Galathach::split_sentence(input), ["This", "is", "a", "test"]
  end

  def test_it_will_array_single_word
    input = "Hello"
    assert_equal Galathach::split_sentence(input), ["Hello"]
  end

  def test_it_will_tag
    input = "This is a tire"
    split = Galathach::split_sentence(input)
    tagged = Galathach::tag_pos(split)
    assert_equal tagged, {"this" => "Dv", "is" => "V", "tire" => "tiNV"}
  end
end
