class PointsCalculator
  WEIGHTS = {
    cuteness: 1,
    obedience: 2,
    tricks: 3,
  }

  def points_for_dog(dog)
    (dog.cuteness * WEIGHTS[:cuteness]) +
      (dog.obedience * WEIGHTS[:obedience]) +
      (dog.tricks * WEIGHTS[:tricks])
  end

end
