# Part 1:  Define a Class

## Summary
In this challenge you will be defining a class that represents a `ShippingContainer` that may contain many `Crate` objects. In this example, we will assume each crate is the same size but may vary in weight. The container is full when it has either reached a weight capacity or crate capacity, whichever comes first.

A `ShippingContainer` instance can answer questions like:

* how much weight can be added?
* how many crates can be added?
* is the container full?

## Tests

### Running the Specs
If you have questions on how to run the tests, please check the [rspec-help](../rspec-help.md) document.


## Releases
### Release 0:  `ShippingContainer` Attributes
In the tests for the `ShippingContainer` class is an example group `"attributes"` that contains tests for the desired attributes for a `ShippingContainer` instance.  Run the tests. Update the `ShippingContainer class` in `shipping_container.rb` to make the tests pass.

### Release 1:  Working with Crates
In the tests for the `ShippingContainer` class is an example group `"working with crates"`.  The example group is currently marked as pending.

```ruby
# in spec/shipping_container_spec.rb

# CHANGE THIS
describe 'working with crates', { pending: true } do

# TO THIS
describe 'working with crates', { pending: false } do
```

After making the change, run the tests to see the examples in this group fail.  Update the `ShippingContainer class` in `shipping_container.rb` to make the tests pass.

## Conclusion
Once all the tests have passed, you have completed Part 1 of the assessment.  If you haven't done so already, commit your changes and move on to Part 2.
