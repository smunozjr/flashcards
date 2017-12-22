require './lib/card'
require './lib/guess'
require 'minitest/autorun'
require 'minitest/pride'

class GuessTest <Minitest::Test

  def test_if_it_exist
    card = Card.new("What is the capital of Alaska?", "Juneau")
    guess = Guess.new("Juneau", card)

    assert_equal card, guess.card
  end

  def test_guess_response
    card = Card.new("What is the capital of Alaska?", "Juneau")
    guess = Guess.new("Juneau", card)

    assert_equal "Juneau", guess.response
  end

  def test_check_correct_guess
    card = Card.new("What is the capital of Alaska?", "Juneau")
    guess = Guess.new("Juneau", card)

    assert_equal true, guess.correct?

    assert_equal "Correct!", guess.feedback
  end

  def test_guess_feedback
    card = Card.new("What is the capital of Alaska?", "Juneau")
    guess = Guess.new("Juneau", card)

    assert_equal "Correct!", guess.feedback
  end

  def test_check_more_guesses
    card = Card.new("Which planet is closest to the sun?", "Mercury")
    guess = Guess.new("Saturn", card)

    assert_equal card, guess.card
  end

  def test_guess_another_response
    card = Card.new("Which planet is closest to the sun?", "Mercury")
    guess = Guess.new("Saturn", card)

    assert_equal "Saturn", guess.response
  end

  def test_check_another_correct_guess
    card = Card.new("Which planet is closest to the sun?", "Mercury")
    guess = Guess.new("Saturn", card)

    assert_equal false, guess.correct?

    assert_equal "Incorrect!", guess.feedback
  end
end
