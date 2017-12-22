class Round

  def initialize(round)
    @deck = round
    @guesses = []

  end

  def deck
    @deck
  end

  def guesses
    @guesses

  end

  def current_card
    deck.cards[0]
  end

  def record_guess(guess)
    
  end



end
