# require_relative './lib/card'
# require_relative './lib/guess'
# require_relative './lib/card_'
require'./lib/round'
require './lib/card_generator'

  filename = 'cards.txt'
  cards = CardGenerator.new(filename).cards

  puts "Welcome! You're playing with #{} cards."
  puts "-------------------------------------------------"

  
