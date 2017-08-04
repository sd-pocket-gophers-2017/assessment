require 'spec_helper'

RSpec.describe Dog do
  let(:dog) { Dog.new({name: 'Wishbone', cuteness: 10, obedience: 4, tricks: 7}) }

  it 'has a name' do
    expect(dog.name).to eq 'Wishbone'
  end

  it 'has cuteness' do
    expect(dog.cuteness).to eq 10
  end

  it 'has obedience' do
    expect(dog.obedience).to eq 4
  end

  it 'has tricks' do
    expect(dog.tricks).to eq 7
  end

end
