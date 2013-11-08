require 'rspec'
require_relative '../lib/warrior'

describe 'Warrior' do

  it 'should have a name and weapon' do
    w1 = Warrior.new('Baldriq', 'Sword')
    w1.weapon.should == 'Sword'
    w1.name.should == 'Baldriq'
    w2 = Warrior.new('Inigo', 'Hammer')
    w2.weapon.should == 'Hammer'
    w2.name.should == 'Inigo'
  end
end