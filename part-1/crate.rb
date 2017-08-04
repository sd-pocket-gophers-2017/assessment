class Crate
  attr_reader :weight
  def initialize(args={})
    @weight = args.fetch(:weight, 0)
  end
end
