require 'spec_helper'

describe LibrarySystem do
  let(:book) { Book.new }
  let(:movie)  { Movie.new }
  let(:cd)   { CD.new }

  let(:library_1) { Library.new(items: [book]) }
  let(:library_2) { Library.new(items: [movie, cd]) }

  let(:library_system) do
    LibrarySystem.new({
      :name      => 'Toledo Lucas County Public Library',
      :libraries => [library_1, library_2]
    })
  end

  it 'has a name' do
    expect(library_system.name).to eq 'Toledo Lucas County Public Library'
  end

  it 'has libraries' do
    expect(library_system.libraries).to match_array [library_1, library_2]
  end

  describe 'items' do
    it 'has items through its libraries' do
      expect(library_system.items).to match_array library_1.items + library_2.items
    end

    it 'available and undamaged items are avaiable items' do
      allow(book).to receive(:available?).and_return false
      allow(movie).to receive(:damaged?).and_return true

      expect(library_system.available_items).to match_array [cd]
    end

    it 'checked out and damaged items are unavailable items' do
      allow(book).to receive(:checked_out?).and_return true
      allow(movie).to receive(:damaged?).and_return true

      expect(library_system.unavailable_items).to match_array [book, movie]
    end
  end
end
