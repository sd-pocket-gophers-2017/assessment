# Part 2: Work with a Collection
## Summary
In this part of the assessment, we are going to be working with a collection of objects.  We've been provided three classes and tests that describe the behaviors of the classes.  Take a look at the provided code before moving on to completing this part of the assessment.

### `Dog` and `PointsCalculator`
The `Dog` and `PointsCalculator` classes have been written for us.  Furthermore, tests have been provided that describe the behaviors of these classes.  Read the code for these classes and the test code because we'll be working with these objects later

### `DogShow`
We're going to model a dog show where each dog is rated on cuteness, obedience skills, and the quality of the tricks they can do. We can initialize a dog show with a collection of dogs and a points calculator. Your task is to add functionality to the `DogShow` class to allow it to answer the following questions:

- What are the current rankings of the dogs? (Highest to Lowest)
- Which dogs did the best in the show? (Top half of the dogs)
- What rank is a particular dog currently holding?

## Running the Tests
If you have questions on how to run the tests, please check the [rspec-help](../rspec-help.md) document.

## Releases
### Release 0: `DogShow#rankings`
`Dog` objects know their scores in the three categories, and the `PointsCalculator` knows how to convert this data into a single comparable value. To determine the current ranking of each dog in a show, we'll need to leverage these objects to find out how the dogs stack up.

A group of tests is provided to describe how an instance of `DogShow` behaves when told to supply the rankings.  This group of tests is [tagged](https://www.relishapp.com/rspec/rspec-core/v/2-4/docs/command-line/tag-option) `rankings`.  To run the tests specific to the `#rankings` method, from the root directory run:

```
rspec --tag rankings
```

The tests in the example group should be failing.  Update the `DogShow` class in `dog_show.rb` to make the tests pass.

*Do not modify the tests.*

### Release 1:  `DogShow#best_dogs`
Now pretend the show is over, and we're interested in knowing which dogs performed the best. We'll now add the functionality to select the best-performing dogs in the show (specifically the top half of performers).

Tests have been provided to describe how an instance of `DogShow` behaves when told to select the best dogs.  The tests are [tagged](https://www.relishapp.com/rspec/rspec-core/v/2-4/docs/command-line/tag-option) `best_dogs`.  To run the tests specific to the `#best_dogs` method, from the root directory run:

```
rspec --tag best_dogs
```

Update the `DogShow` class in `dog_show.rb` to make the tests pass.

*Do not modify the tests.*

### Release 2: `DogShow#ranking_for`
If you wanted to know the ranking for a specific dog you can ask the dog show what ranking a dog has using the dog name.

Tests have been provided to describe how an instance of `DogShow` behaves when told to supply the rankings for a given dog. This test has been [tagged](https://www.relishapp.com/rspec/rspec-core/v/2-4/docs/command-line/tag-option) `ranking_for`. To run the tests specific to the `#ranking_for` method, from the root directory run:

```
rspec --tag ranking_for
```

Update the `DogShow` class in `dog_show.rb` to make the tests pass.

*Do not modify the tests.*

## Conclusion
Once all the tests have passed, you have completed Part 2 of the assessment.  If you haven't done so already, commit your changes and move on to Part 3.
