require_relative 'points_calculator'

class DogShow

  attr_reader :calculator, :dogs

  def initialize(args={})
    @dogs = args.fetch(:dogs, [])
    @calculator = args.fetch(:calculator) { PointsCalculator.new }
  end

  def rankings
    # dogs.class => Array of instances of dog
    dogs.sort_by{ |dog| self.calculator.points_for_dog(dog) }.reverse
    # dog_rankings.each do |dog|
    # dog_rankings = dogs.each do |dog|
      # puts "#{dog.name} #{self.calculator.points_for_dog(dog)}"
    # end
  end

  def best_dogs
    # self.rankings.class => Array
    self.rankings.first(self.rankings.count / 2)
  end

  def ranking_for(name)
    self.rankings.find_index { |dog| dog.name == name } + 1
  end

end
