require 'spec_helper'
require 'zombie'

describe Zombie do
  it 'is named Ash' do
    zombie = Zombie.new
    expect(zombie.name).to eq('Ash')
  end

  it 'has no brains' do
    zombie = Zombie.new
    expect(zombie.brains).to be < 1
  end
end

describe 'Predicate matchers' do
  describe 'Fixnum#zero?' do
    describe 0 do
      it { should be_zero }
    end
    describe 7 do
      it { should_not be_zero }
    end
  end

  describe 'Array#empty?' do
    describe [1, 2, 3] do
      it { should_not be_empty}
    end
    describe [] do
      it { should be_empty }
    end
  end
end