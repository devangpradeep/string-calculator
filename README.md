# String Calculator Kata

## Project Overview
This project is an implementation of the String Calculator kata, demonstrating Test-Driven Development (TDD) practices in Ruby.

## Problem Description
The String Calculator is a class that takes a string of numbers and returns their sum with various parsing rules and constraints.

## Features
- Handles empty string or nil input
- Handles single and multiple numbers
- Supports comma and newline separators
- Allows custom delimiters
- Handles negative numbers with specific error handling
- Ignores numbers larger than 1000

## Code Quality
This project follows the Shopify Ruby style guide using Rubocop:
- Uses `rubocop-shopify` gem for style enforcement
- Customized to use double quotes for string literals
- Ensures consistent code style and best practices

### Rubocop Configuration
```yaml
inherit_gem:
  rubocop-shopify: rubocop.yml

Style/StringLiterals:
  EnforcedStyle: double_quotes
```

## Requirements Implemented

### Basic Addition
- Empty string returns 0
- Single number returns the number
- Two or more numbers can be summed
- Supports comma and newline separators

### Advanced Features
- Custom delimiter support
- Negative number handling with informative error messages
- Ignore numbers larger than 1000

## Usage Example
```ruby
calculator = StringCalculator.new
calculator.add("")         # Returns 0
calculator.add("1")        # Returns 1
calculator.add("1,5")      # Returns 6
calculator.add("1\n2,3")   # Returns 6
calculator.add("//;\n1;2") # Returns 3
```

## Error Handling
Attempting to add negative numbers will raise an exception:
```ruby 
calculator.add("-1,2")     # Raises: "negative numbers not allowed: -1"
calculator.add("-1,-2,3")  # Raises: "negative numbers not allowed: -1, -2"
```

## Large Number Handling
Numbers greater than 1000 are ignored:
```ruby
calculator.add("2,1001,6")  # Returns 8
```

## Development
- Language: Ruby
- Testing framework: Rspec
- Development Methodology: Test Driven Development (TDD)
- Style Guide: Shopify Ruby Style Guide

## Setup
1. Install dependencies: 
```bash
bundle install
```
2. Run test cases:
```bash
bundle exec rspec
```
3. Run Rubocop:
```bash
bundle exec rubocop
```

## Project Structure
```
string-calculator/
├── lib/
│   └── string_calculator.rb    # Main implementation
├── spec/
│   └── string_calculator_spec.rb    # Test suite
├── .rspec                     # Rspec configuration
├── .rubocop.yml               # Rubocop configuration
├── Gemfile                    # Project dependencies
└── README.md
```

## Development Approach
This project follows Test-Driven Development (TDD) principles:
- Red: Write a failing test
- Green: Write the minimum code to make the test pass
- Refactor: Clean up the code while keeping tests green

Each commit represents one cycle of the TDD process, making it easy to follow the development progression.