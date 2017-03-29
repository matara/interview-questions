class Card

end

class Deck

  def initialize
    @cards = 52.times.map { Card.new }
  end

  def shuffle!
    @cards.shuffle
  end

end

deck = Deck.new
deck.shuffle!
