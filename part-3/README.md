# Part 3: Object-Oriented Design

## Summary

In Part 3 of the assessment, we'll apply object-oriented design principles to refactor some Ruby classes for improved code reuse.  When these classes were written, knowledge about our application was often duplicated in multiple places; in other words, the code is not DRY.


### Testing
Tests are provided for each of the classes.  All the tests pass, which indicates that the classes behave as expected.  As we refactor, use the tests to ensure that our changes don't break any functionality.  Passing tests do not indicate that we've made good decisions in our refactoring, only that we haven't broken anything.

For questions on how to run the tests, please check the
[rspec-help](../rspec-help.md) document.


## Release 0: Improve Design
As was stated in the *Summary*, we want to apply object-oriented design principles to refactor some Ruby classes.  Think big picture.  Don't worry about how any particular method is named or implemented, rather focus on improving the overall design of the application.

We're free to make any changes to the code base that we want—for example, adding a file. Just don't modify the existing tests.  This part of the assessment is completed when you've designed the code as best you know how.

*Note:* One of the provided classes is `MediaKiosk`.  Media kiosks allow people to rent media like books, video games, DVDs, etc. They are often located in or outside of convenience stores, grocery stores, and fast-food restaurants.  Redbox and Gamefly are examples of common media kiosk brands.  


## Conclusion

Once you've made all the changes that you find improve the code, you have
completed Part 3 of the assessment.  If you haven't done so already, commit
your changes and move on to Part 4.
