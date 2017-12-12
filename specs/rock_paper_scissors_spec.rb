require('minitest/autorun')
require('minitest/rg')
require_relative('../models/rock_paper_scissors.rb')

class TestRockPaperScissors < Minitest::Test

  def setup
    @game1 = RockPaperScissors.new('paper', 'rock')
    @game2 = RockPaperScissors.new('paper', 'scissors')
    @game3 = RockPaperScissors.new('paper', 'paper')
    @game4 = RockPaperScissors.new('scissors', 'paper')
    @game5 = RockPaperScissors.new('scissors', 'rock')
    @game6 = RockPaperScissors.new('scissors', 'scissors')
    @game7 = RockPaperScissors.new('rock', 'scissors')
    @game8 = RockPaperScissors.new('rock', 'paper')
    @game9 = RockPaperScissors.new('rock', 'rock')
  end

  def test_paper_beats_rock
    assert_equal('paper beats rock!', @game1.play())
    assert_equal('paper beats rock!', @game8.play())
  end

  def test_scissors_beat_paper
    assert_equal('scissors beats paper!', @game2.play())
    assert_equal('scissors beats paper!', @game4.play())
  end

end
