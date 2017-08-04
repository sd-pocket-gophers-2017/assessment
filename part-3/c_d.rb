class CD < Media
  attr_reader :runtime, :artist, :label

  def initialize(args ={})
    super
    @runtime = args[:runtime]
    @artist  = args[:artist]
    @label   = args[:label]
  end

end
