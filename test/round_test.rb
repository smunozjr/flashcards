require './lib/deck'
require './lib/card'
require './lib/round'
require './lib/guess'
require 'minitest/autorun'
require 'minitest/pride'

class RoundTest <Minitest::Test

   def test_round_deck
     card_1 = Card.new("What is the capital of Alaska?", "Juneau")
     card_2 = Card.new("Approximately how many miles are in one astronomical unit?", "93,000,000")
     deck = Deck.new([card_1, card_2])
     round = Round.new(deck)

     assert_equal deck, round.deck

   end

   def test_round_guesses
     card_1 = Card.new("What is the capital of Alaska?", "Juneau")
     card_2 = Card.new("Approximately how many miles are in one astronomical unit?", "93,000,000")
     deck = Deck.new([card_1, card_2])
     round = Round.new(deck)

     assert_equal [], round.guesses
    end

    def test_current_card
      card_1 = Card.new("What is the capital of Alaska?", "Juneau")
      card_2 = Card.new("Approximately how many miles are in one astronomical unit?", "93,000,000")
      deck = Deck.new([card_1, card_2])
      round = Round.new(deck)

      assert_equal card_1, round.current_card
    end

    def test_round_record_guess
      skip
      card_1 = Card.new("What is the capital of Alaska?", "Juneau")
      card_2 = Card.new("Approximately how many miles are in one astronomical unit?", "93,000,000")
      deck = Deck.new([card_1, card_2])
      round = Round.new(deck)

      assert_equal guess, round.record_guess("Juneau")
    end

    def test_round_gusses_count
      skip
      card_1 = Card.new("What is the capital of Alaska?", "Juneau")
      card_2 = Card.new("Approximately how many miles are in one astronomical unit?", "93,000,000")
      deck = Deck.new([card_1, card_2])
      round = Round.new(deck)

      assert_equal 1, round.gussess.count
    end

    def test_round_gussess_feedback
      skip
      card_1 = Card.new("What is the capital of Alaska?", "Juneau")
      card_2 = Card.new("Approximately how many miles are in one astronomical unit?", "93,000,000")
      deck = Deck.new([card_1, card_2])
      round = Round.new(deck)

      assert_equal "correct!", round.gusses.first.feedback
    end


    def test_round_gussess_feedback
      skip
      card_1 = Card.new("What is the capital of Alaska?", "Juneau")
      card_2 = Card.new("Approximately how many miles are in one astronomical unit?", "93,000,000")
      deck = Deck.new([card_1, card_2])
      round = Round.new(deck)

      assert_equal 1, round.current_card
    end

    def test_round_another_current_card
      skip
      card_1 = Card.new("What is the capital of Alaska?", "Juneau")
      card_2 = Card.new("Approximately how many miles are in one astronomical unit?", "93,000,000")
      deck = Deck.new([card_1, card_2])
      round = Round.new(deck)

      assert_equal card_2, round.current_card
    end

    def test_record_guess_two
      skip
      card_1 = Card.new("What is the capital of Alaska?", "Juneau")
      card_2 = Card.new("Approximately how many miles are in one astronomical unit?", "93,000,000")
      deck = Deck.new([card_1, card_2])
      round = Round.new(deck)

      assert_equal 2, round.record_guess("2")
    end

    def test_round_gussess_last_feedback
      skip
      card_1 = Card.new("What is the capital of Alaska?", "Juneau")
      card_2 = Card.new("Approximately how many miles are in one astronomical unit?", "93,000,000")
      deck = Deck.new([card_1, card_2])
      round = Round.new(deck)

      assert_equal "incorrect.", round.guesses.last.feedback
    end

    def test_round_number_correct_again
      skip
      card_1 = Card.new("What is the capital of Alaska?", "Juneau")
      card_2 = Card.new("Approximately how many miles are in one astronomical unit?", "93,000,000")
      deck = Deck.new([card_1, card_2])
      round = Round.new(deck)

      assert_equal 1, round.number_correct
    end

    def test_round_percent_correct
      skip
      card_1 = Card.new("What is the capital of Alaska?", "Juneau")
      card_2 = Card.new("Approximately how many miles are in one astronomical unit?", "93,000,000")
      deck = Deck.new([card_1, card_2])
      round = Round.new(deck)

      assert_equal 50, round.percent_correct
    end





end
