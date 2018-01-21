require './lib/deck'
require './lib/card'
require './lib/round'
require './lib/guess'
require 'minitest/autorun'
require 'minitest/pride'

class RoundTest <Minitest::Test

  attr_reader :deck,
              :card_1,
              :card_2,
              :round

  def test_if_round_exist
     card_1 = Card.new("What is the capital of Alaska?", "Juneau")
     card_2 = Card.new("Approximately how many miles are in one astronomical unit?", "93,000,000")
     deck = Deck.new([card_1, card_2])
     round = Round.new(deck)

     assert_instance_of Round, round

  end

  def test_if_guesses_starts_empty
     card_1 = Card.new("What is the capital of Alaska?", "Juneau")
     card_2 = Card.new("Approximately how many miles are in one astronomical unit?", "93,000,000")
     deck = Deck.new([card_1, card_2])
     round = Round.new(deck)

     assert_equal [], round.guesses
  end

  def test_if_guess_is_added
    card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    card_2 = Card.new("Approximately how many miles are in one astronomical unit?", "93,000,000")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    round.record_guess("anything")
    guesses = round.guesses 
    last_guess = guesses.last
    response = last_guess.response
    assert_equal "anything", response
  end




  def test_if_method_current_card_returns_current_card
      card_1 = Card.new("What is the capital of Alaska?", "Juneau")
      card_2 = Card.new("Approximately how many miles are in one astronomical unit?", "93,000,000")
      deck = Deck.new([card_1, card_2])
      round = Round.new(deck)

      assert_equal card_1, round.current_card

      assert_equal card_1, round.current_card
  end
end
