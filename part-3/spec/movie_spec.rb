require 'spec_helper'

describe Movie do
  let(:movie) { Movie.new(title: 'Robin Hood: Prince of Thieves', runtime: 143, format: 'Blu-ray') }

  it 'has a title' do
    expect(movie.title).to eq 'Robin Hood: Prince of Thieves'
  end

  it 'has a runtime' do
    expect(movie.runtime).to eq 143
  end

  it 'has a format' do
    expect(movie.format).to eq 'Blu-ray'
  end

  it 'does not have an artist' do
    expect{movie.artist}.to raise_error(NameError)
  end

  it 'does not have an author' do
    expect{movie.artist}.to raise_error(NameError)
  end

  it 'does not have a length' do
    expect{movie.length}.to raise_error(NameError)
  end

  describe 'availability' do
    it 'can be available' do
      expect(movie).to be_available
    end

    it 'can be checked out' do
      movie.checkout
      expect(movie).to be_checked_out
    end

    it 'becomes unavailable when checked out' do
      movie.checkout
      expect(movie).to_not be_available
    end

    it 'becomes available when returned' do
      movie.checkout
      expect(movie).to_not be_available

      movie.return
      expect(movie).to be_available
    end
  end

  describe "maintenance" do
    it "reports whether or not its damaged" do
      expect(movie).to_not be_damaged
    end

    it "can be damaged" do
      movie.record_damage
      expect(movie).to be_damaged
    end

    it "can be repaired" do
      movie.record_damage
      expect(movie).to be_damaged

      movie.repair
      expect(movie).to_not be_damaged
    end
  end
end
