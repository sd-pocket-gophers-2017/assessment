class Movie < Media
  attr_reader :runtime, :format

  def initialize(args ={})
    super
    @runtime = args[:runtime]
    @format  = args[:format]
  end

end
