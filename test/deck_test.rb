require './lib/deck'
require './lib/card'
require 'minitest/autorun'
require 'minitest/pride'

class DeckTest <Minitest::Test

  def test_cards_in_deck
    card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars")
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west")
    deck = Deck.new([card_1, card_2, card_3])

    assert_equal [card_1, card_2, card_3].count, deck.cards
    require 'pry'; binding.pry
  end
end
