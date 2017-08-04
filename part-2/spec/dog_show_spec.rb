require 'spec_helper'

RSpec.describe DogShow do

  let(:fido) { Dog.new({name: 'Fido', cuteness: 7, obedience: 2, tricks: 1}) }
  let(:fluffy) { Dog.new({name: 'Fluffy', cuteness: 5, obedience: 4, tricks: 7}) }
  let(:zanzibar) { Dog.new({name: 'Zanzibar', cuteness: 1, obedience: 6, tricks: 3}) }
  let(:woof) { Dog.new({name: 'Woof', cuteness: 6, obedience: 8, tricks: 4}) }
  let(:bookean) { Dog.new({name: 'Boolean', cuteness: 3, obedience: 7, tricks: 0}) }
  let(:spot) { Dog.new({name: 'Spot', cuteness: 9, obedience: 5, tricks: 4}) }
  let(:wishbone) { Dog.new({name: 'Wishbone', cuteness: 10, obedience: 4, tricks: 7}) }
  let(:jeff) { Dog.new({name: 'Jeff', cuteness: 8, obedience: 2, tricks: 6}) }
  let(:dogs) { [fido, fluffy, zanzibar, woof, bookean, spot, wishbone, jeff] }

  let(:calculator) { PointsCalculator.new }

  let(:dog_show) { DogShow.new({dogs: dogs, calculator: calculator}) }

  it 'has dogs' do
    expect(dog_show.dogs).to match_array dogs
  end

  it 'has a calculator' do
    expect(dog_show.calculator).to eq calculator
  end

  describe '#rankings', { rankings: true } do
    it 'returns a collection of dogs sorted by points in descending order' do
      expect(dog_show.rankings).to eq [wishbone, fluffy, woof, spot, jeff, zanzibar, bookean, fido]
    end
  end

  describe '#best_dogs', { best_dogs: true } do
    it 'returns the top half of the dogs in the show' do
      expect(dog_show.best_dogs).to eq [wishbone, fluffy, woof, spot]
    end
  end

  describe '#ranking_for(name)', { ranking_for: true } do
    it 'returns the position of the dog with the passed in name' do
      expect(dog_show.ranking_for('Wishbone')).to eq 1
      expect(dog_show.ranking_for('Boolean')).to eq 7
    end
  end
end
