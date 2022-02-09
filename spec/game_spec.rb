require_relative '../classes/game'
require 'date'

describe 'test Game class' do
  before :each do
    @game = [Game.new(true, '2020', '2005'), Game.new(true, '2022', '2022')]
  end

  it 'instantiates a Game' do
    expect(@game.each).to be_instance_of Game
  end

  it 'checks if game is kind of Item' do
    @game.each do |game|
      expect(game).to be_kind_of Item
    end
  end

  it 'can be achieved' do
    expect(@game[0].can_be_archived?).to be(true)
  end

  it 'cannot be achieved' do
    expect(@game[1].can_be_archived?).to be(false)
  end
end
