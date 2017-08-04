## Running the Tests

Change directory in the shell (`cd`) so that you are in an assessment "part"
directory e.g. (`part-1`, `part-2`, etc.).

To run all the tests, you can use:

`bundle exec rspec spec `

or simply:

`bundle exec rspec`

*Note: Your machine may have an alias to short hand bundle exec to `be`*

To run the tests for a specific file, you can use:

`bundle exec rspec spec spec/<file_name_goes_here>`

If you would like RSpec to stop running the tests as soon as it executes a
failing test, you can use the `--fail-fast` option with any of the above
commands. This will cut down on the output and may make it easier to read.
