require 'spec_helper'

describe CD do
  let(:cd) { CD.new(title: 'Robbin\' the Hood', runtime: 61, artist: 'Sublime', label: 'Skunk Records') }

  it 'has a title' do
    expect(cd.title).to eq 'Robbin\' the Hood'
  end

  it 'has a runtime' do
    expect(cd.runtime).to eq 61
  end

  it 'has an artist' do
    expect(cd.artist).to eq 'Sublime'
  end

  it 'has a label' do
    expect(cd.label).to eq 'Skunk Records'
  end

  describe 'availability' do
    it 'can be available' do
      expect(cd).to be_available
    end

    it 'can be checked out' do
      cd.checkout
      expect(cd).to be_checked_out
    end

    it 'becomes unavailable when checked out' do
      cd.checkout
      expect(cd).to_not be_available
    end

    it 'becomes available when returned' do
      cd.checkout
      expect(cd).to_not be_available

      cd.return
      expect(cd).to be_available
    end
  end

  describe "maintenance" do
    it "reports whether or not its damaged" do
      expect(cd).to_not be_damaged
    end

    it "can be damaged" do
      cd.record_damage
      expect(cd).to be_damaged
    end

    it "can be repaired" do
      cd.record_damage
      expect(cd).to be_damaged

      cd.repair
      expect(cd).to_not be_damaged
    end
  end
end
