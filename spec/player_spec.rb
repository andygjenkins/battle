require 'spec_helper'

describe Player do

  subject(:dave) { described_class.new("Dave") }
  subject(:mittens) { described_class.new("Mittens") }

  describe '#initialize' do
    it 'starts with 50HP' do
      expect(dave.hit_points).to eq described_class::MAX_HP
    end

    it 'returns the name of the player' do
      expect(dave.name).to eq "Dave"
    end
  end


  describe '#attack' do
    it 'reduces the opponents HP by 10' do
      expect{ dave.attack(mittens) }.to change{ mittens.hit_points }.by -described_class::DAMAGE
    end
  end


end
