class Guess

  attr_reader :card,
              :response


  def initialize(response, card)
    @card = card
    @response = response
  end

def correct?
  # require'pry'; binding.pry
  if @response == card.answer
     true
  else
     false
  end
end

  def feedback
    if @response == card.answer
      "Correct!"
    else
     "Incorrect!"
    end
  end


end
