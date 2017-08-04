class Book < Media
  attr_reader :length, :author, :format, :language

  def initialize(args = {})
    super
    @length = args[:length]
    @author = args[:author]
    @format = args[:format]
    @language = args[:language]
  end

end
