require 'rspec'
require_relative '../lib/warrior'
require_relative '../lib/weapon'

describe 'Warrior' do

  it 'should have a name' do
    Warrior.new('Baldriq', nil, nil).name.should == 'Baldriq'
    Warrior.new('Inigo', nil, nil).name.should == 'Inigo'
  end

  it 'should have hp' do
    Warrior.new(nil, 10, nil).hp.should == 10
    Warrior.new(nil, 15, nil).hp.should == 15
  end

  it 'should have a weapon' do
    weapon1 = Weapon.new('Rusty Sword', 3, 6)
    weapon2 = Weapon.new('Long Spear', 2, 10)
    Warrior.new(nil, nil, weapon1).weapon.should == weapon1
    Warrior.new(nil, nil, weapon2).weapon.should == weapon2
  end

end

describe 'Attacking' do

  it 'should be able to attack something' do
    sw = Warrior.new(nil, nil, nil)
    sw.should respond_to(:attack).with(1).arguments
  end

end

describe 'Taking hits' do

  it 'should be able to take hits' do
    sw = Warrior.new(nil, nil, nil)
    sw.should respond_to(:take_hit).with(1).arguments
  end

  it 'should be able to take a hit from an attacker' do
    attacker = Warrior.new(nil, nil, nil)
    defender = Warrior.new(nil, nil, nil)

    defender.should_receive(:take_hit)
    attacker.attack(defender)
  end

  it 'should take dmg from the attacking weapon' do
    attacker = Warrior.new(nil, nil, Weapon.new('Rusty Sword', 3, 6))
    defender = Warrior.new(nil, 10, nil)

    attacker.attack(defender)
    defender.hp.should be < 10
  end

end