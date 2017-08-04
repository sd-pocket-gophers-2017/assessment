require 'spec_helper'

describe Book do
  let(:book) do
    Book.new({
      :title    => 'The Merry Adventures of Robin Hood of Great Renown in Nottinghamshire',
      :length   => 192,
      :author   => 'Howard Pyle',
      :format   => 'paperback',
      :language => 'English'
    })
  end

  it 'has a title' do
    expect(book.title).to eq 'The Merry Adventures of Robin Hood of Great Renown in Nottinghamshire'
  end

  it 'has a length' do
    expect(book.length).to eq 192
  end

  it 'has an author' do
    expect(book.author).to eq 'Howard Pyle'
  end

  it 'has a format' do
    expect(book.format).to eq 'paperback'
  end

  it 'has a language' do
    expect(book.language).to eq 'English'
  end

  it 'does not have a runtime' do
    expect{book.runtime}.to raise_error(NameError)
  end

  it 'does not have an artist' do
    expect{book.artist}.to raise_error(NameError)
  end

  describe 'availability' do
    it 'can be available' do
      expect(book).to be_available
    end

    it 'can be checked out' do
      book.checkout
      expect(book).to be_checked_out
    end

    it 'becomes unavailable when checked out' do
      book.checkout
      expect(book).to_not be_available
    end

    it 'becomes available when returned' do
      book.checkout
      expect(book).to_not be_available

      book.return
      expect(book).to be_available
    end
  end

  describe "maintenance" do
    it "reports whether or not its damaged" do
      expect(book).to_not be_damaged
    end

    it "can be damaged" do
      book.record_damage
      expect(book).to be_damaged
    end

    it "can be repaired" do
      book.record_damage
      expect(book).to be_damaged

      book.repair
      expect(book).to_not be_damaged
    end
  end
end
