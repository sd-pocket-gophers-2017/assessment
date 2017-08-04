class ShippingContainer
  attr_reader :destination, :max_crates, :crates
  attr_accessor :max_weight

  def initialize(args)
    @destination = args.fetch(:destination)
    @max_weight = args.fetch(:max_weight)
    @max_crates = args.fetch(:max_crates)
    @crates = args.fetch(:crates)
    @max_weight = args.fetch(:max_weight)
  end

  def current_weight
    if crates.empty?
      return 0
    else
      crates.reduce(0) { |total_weight, crate| total_weight + crate.weight }
    end
  end

  def crates_count
    crates.count
  end

  def add_crate(new_crate)
    if new_crate.weight + current_weight > max_weight
      return false
    elsif crates_count == max_crates
      return false
    elsif current_weight < max_weight && crates_count < max_crates
      crates << new_crate
      return true
    end
  end
end
