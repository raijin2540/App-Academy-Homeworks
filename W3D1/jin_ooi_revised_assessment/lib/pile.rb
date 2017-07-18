
class Pile
  attr_reader :top_card, :current_suit
  #added @current_suit

  def initialize(top_card)
    @top_card = top_card
    @current_suit = top_card.suit
    #updated to reflect added instance variable
  end


  def current_value
    @top_card.value
  end

  def current_suit
    @current_suit
    #changed to return instance variable instead of determining from @top_card
  end


  def valid_play?(card)
    return true if card.value == current_value
    return true if card.suit == current_suit
    return true if card.value == :eight
    false
  end


  def play(card)
    #updated method to change current suit
    raise "must declare suit when playing eight" if card.value == :eight

    raise "invalid play" if valid_play?(card) == false
    @top_card = card
    @current_suit = card.suit
  end


  def play_eight(card, suit_choice)
    raise "must play eight" if card.value != :eight
    @top_card = card
    @current_suit = suit_choice
    #updated method to change current suit
  end
end
