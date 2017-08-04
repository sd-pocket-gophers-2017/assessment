class Library < Repository
  attr_reader :library_system

  def initialize(args = {})
    super
    @library_system = args[:library_system]
  end

end
