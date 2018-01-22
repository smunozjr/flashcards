require "./lib/card"
require 'minitest/autorun'
require 'minitest/pride'
require './lib/card_generator'

class CardGeneratorTest < Minitest::Test

  def setup
    @cardg = CardGenerator.new
  end

  def test_it_exists
    assert_instance_of CardGenerator, @cardg
  end

  def test_it_can_read_a_file
    @cardg.load_file('./cards.txt')

    assert_kind_of String, @cardg.contents
  end

  def test_it_can_make_card
    contents = "What is 5 + 5?,10\nWhat is the capital of Alaska?,Juneau"
    @cardg.build_questions(contents)

    assert_instance_of Card, @cardg.questions.first
    assert_equal "What is 5 + 5?", @cardg.questions.first.question
  end

  def test_run_card_generator
    qa_string = @cardg.load_file('./cards.txt')
    @cardg.build_questions(qa_string)

    assert_equal 4, @cardg.questions.count
  end

end
