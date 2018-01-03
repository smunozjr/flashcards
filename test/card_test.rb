require "./lib/card"
require 'minitest/autorun'
require 'minitest/pride'

class CardTest <Minitest::Test

  attr_reader :card

  def test_if_class_card_exist
    card = Card.new("What is the capital of Alaska?", "Juneau")

    assert_instance_of Card, card
  end

  def test_if_question_from_card_returns_a_question
    card = Card.new("What is the capital of Alaska?", "Juneau")

    assert_equal "What is the capital of Alaska?", card.question
  end

  def test_if_question_returns_answer
    card = Card.new("What is the capital of Alaska?", "Juneau")

    assert_equal "Juneau", card.answer
  end







end
