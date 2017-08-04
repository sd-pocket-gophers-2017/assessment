require 'spec_helper'

describe VideoGame do
  let(:video_game) do
    VideoGame.new({
      :title     => 'Robin Hood: Defender of the Crown',
      :platform  => 'Xbox',
      :developer => 'Cinemaware',
      :genre     => 'turn-based strategy'
    })
  end

  it 'has a title' do
    expect(video_game.title).to eq 'Robin Hood: Defender of the Crown'
  end

  it 'is for a particular platform' do
    expect(video_game.platform).to eq 'Xbox'
  end

  it 'has a developer' do
    expect(video_game.developer).to eq 'Cinemaware'
  end

  it 'has a genre' do
    expect(video_game.genre).to eq 'turn-based strategy'
  end

  it 'does not have an artist' do
    expect{video_game.artist}.to raise_error(NameError)
  end

  it 'does not have a length' do
    expect{video_game.length}.to raise_error(NameError)
  end

  it 'does not have a runtime' do
    expect{video_game.runtime}.to raise_error(NameError)
  end

  describe 'availability' do
    it 'can be available' do
      expect(video_game).to be_available
    end

    it 'can be checked out' do
      video_game.checkout
      expect(video_game).to be_checked_out
    end

    it 'becomes unavailable when checked out' do
      video_game.checkout
      expect(video_game).to_not be_available
    end

    it 'becomes available when returned' do
      video_game.checkout
      expect(video_game).to_not be_available

      video_game.return
      expect(video_game).to be_available
    end
  end

  describe "maintenance" do
    it "reports whether or not its damaged" do
      expect(video_game).to_not be_damaged
    end

    it "can be damaged" do
      video_game.record_damage
      expect(video_game).to be_damaged
    end

    it "can be repaired" do
      video_game.record_damage
      expect(video_game).to be_damaged

      video_game.repair
      expect(video_game).to_not be_damaged
    end
  end
end
