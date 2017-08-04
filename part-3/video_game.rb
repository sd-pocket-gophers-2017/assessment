class VideoGame < Media
  attr_reader :platform, :developer, :genre

  def initialize(args = {})
    super
    @platform = args[:platform]
    @developer = args[:developer]
    @genre = args[:genre]
  end

end
