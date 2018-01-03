require './lib/guess'

class Round

  attr_reader :deck,
              :guesses

  def initialize(deck)
    @deck = deck
    @guesses = []
    @card_counter = -1
  end

  def current_card
    @card_counter += 1
    deck.cards[@card_counter]
  end

  def record_guess(guess)
    @guesses << Guess.new(guess, current_card)
    @guesses.last
  end

  def start
    puts "Welcome! You're playing with 4 cards."

  end




end
