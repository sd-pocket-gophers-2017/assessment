class LibrarySystem
  attr_reader :name, :libraries

  def initialize(args ={})
    @name = args[:name]
    @libraries = args.fetch(:libraries, [])
  end

  def items
    libraries.flat_map(&:items)
  end

  def available_items
    libraries.flat_map(&:available_items)
  end

  def unavailable_items
    libraries.flat_map(&:unavailable_items)
  end
end
