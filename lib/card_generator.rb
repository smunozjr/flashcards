require './lib/card'

class CardGenerator

  contents = File.read('./cards.txt')
  cards = []
  card_info = contents.split(/[\n,]/)
  card_info.each_with_index do |card, index|
    cards << Card.new(card_info[0], card_info[1])
    card_info.slice!(0..1)
  end
  require "pry"; binding.pry






end
