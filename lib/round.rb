require './lib/guess'

class Round

  attr_reader :deck,
              :guesses

  attr_accessor :current_card_index

  def initialize(deck)
    @deck = deck
    @guesses = []
    @current_card_index = 0
  end

  def current_card
    deck.cards[current_card_index]
  end

  def move_to_next_card
    self.current_card_index += 1
  end


  def record_guess(guess)
    guesses << Guess.new(guess, current_card)
    guesses.last
  end

  def start
    puts "Welcome! You're playing with #{deck.count} cards."
    puts "-------------------------------------------------"
    while current_card
      play_current_card
    end
  end

  def play_current_card
    puts "This is card number #{current_card_number} out of #{deck.count}."
    puts "Question: #{current_card.question}"
    guess = record_guess(gets.chomp)
    puts guess.feedback
    move_to_next_card
  end

  private

  def current_card_number
    current_card_index + 1
  end


end
