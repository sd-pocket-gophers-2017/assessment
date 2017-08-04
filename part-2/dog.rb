class Dog

  attr_reader :name, :cuteness, :obedience, :tricks

  def initialize(args)
    @name = args.fetch(:name)
    @cuteness = args.fetch(:cuteness, 0)
    @obedience = args.fetch(:obedience, 0)
    @tricks = args.fetch(:tricks, 0)
  end

end
