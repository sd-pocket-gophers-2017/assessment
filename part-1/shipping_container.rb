class ShippingContainer
  attr_reader :destination, :max_crates, :crates
  attr_accessor :max_weight

  def initialize(args)
    @destination = args.fetch(:destination)
    @max_weight = args.fetch(:max_weight)
    @max_crates = args.fetch(:max_crates)
    @crates = args.fetch(:crates, [])
  end

  def current_weight
      crates.reduce(0) { |total_weight, crate| total_weight + crate.weight }
  end

  def crates_count
    crates.count
  end

  def over_weight?(new_crate)
    new_crate.weight + current_weight > max_weight
  end

  def over_max_amount?
    crates.count + 1 > max_crates
  end

  def add_crate(new_crate)
    return false if over_weight?(new_crate) || over_max_amount?
    crates << new_crate
    true
  end
end
