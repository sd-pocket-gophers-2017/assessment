require 'spec_helper'

RSpec.describe PointsCalculator do

  let(:fido) { Dog.new({name: 'Fido', cuteness: 6, obedience: 4, tricks: 7}) }
  let(:calulator) { PointsCalculator.new }

  it 'calculates points for a dog' do
    expect(calulator.points_for_dog(fido)).to eq 35
  end

end
