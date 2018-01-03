require './lib/deck'
require './lib/card'
require './lib/round'
require './lib/guess'
require './lib/card_generator'
require 'minitest/autorun'
require 'minitest/pride'

class CardGeneratorTest  <Minitest::Test

  def test_if_file_exist
    cards = CardGenerator.new('../cards.txt').cards

    assert File.exists?("../cards.txt")
  end

  def test_can_create_cards_from_text_file
    card_generator = CardGenerator.new("../cards.txt")
    assert_equal 4, card_generator.cards.count
    assert_instance_of Card, card_generator.cards[1]
  end

end
