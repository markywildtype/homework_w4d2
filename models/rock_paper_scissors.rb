class RockPaperScissors

  def initialize(hand1, hand2)
    @hand1 = hand1
    @hand2 = hand2
  end

  def play
    if @hand1 == 'paper' && @hand2 == 'rock'
      return "#{@hand1} beats #{@hand2}!"
    elsif @hand1 == 'paper' && @hand2 == 'scissors'
      return "#{@hand2} beats #{@hand1}!"
    elsif @hand1 == 'paper' && @hand2 == 'paper'
      return "it's a draw!"
    elsif @hand1 == 'scissors' && @hand2 == 'paper'
      return "#{@hand1} beats #{@hand2}!"
    elsif @hand1 == 'scissors' && @hand2 == 'rock'
      return "#{@hand2} beats #{@hand1}!"
    elsif @hand1 == 'scissors' && @hand2 == 'scissors'
      return "it's a draw!"
    elsif @hand1 == 'rock' && @hand2 == 'paper'
      return "#{@hand2} beats #{@hand1}!"
    elsif @hand1 == 'rock' && @hand2 == 'scissors'
      return "#{@hand1} beats #{@hand2}!"
    elsif @hand1 == 'rock' && @hand2 == 'rock'
      return "it's a draw!"
    end
  end
end
