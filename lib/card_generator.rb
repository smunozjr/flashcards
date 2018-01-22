require './lib/card'

class CardGenerator
  attr_reader :contents,
              :questions

  def initialize
    @contents = ""
    @questions = []
  end

  def load_file(filename)
    contents = File.read(filename)
  end

  def build_questions(string)
    data = string.split("\n")
    data.map do |pair|
      data_split = pair.split(",")
      @questions << Card.new(data_split[0],data_split[1])
    end
  end

end
