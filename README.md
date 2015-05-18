# MotionBitmask

This is a simple implementation of generic bitmasks for use in RubyMotion. 

This is a work in progress, but is used in production in apps in App Store. YMMV. 

# Installation

Install with 

```
gem install motion-bitmask
```

or add to your ```Gemfile```

````ruby
gem 'motion-bitmask'
````

# Usage

Create a new bitmask with 

```ruby
bitmask = Bitmask.new([:first_value, :second_value, :third_value])
```

Set a value with 

```ruby
bitmask << :first_value
```

Check if a given value is set with

```ruby
bitmask.set?(:first_value)
```

Get an array of all set values with

```ruby
bitmask.values => [:first_value]
```

Get an array of all allowed values with

```ruby
bitmask.allowed_values => [:first_value, :second_value, :third_value]
```

# Persistence

```motion-bitmask``` does not have an opinion on how values are persisted but support setting the initial bitmask field with

```ruby
bitmask = Bitmask.new(INITIAL_VALUE, [:first_value, :second_value, :third_value])
```

To get the current "raw" value of the bitmask, use

```ruby
bitmask.raw_value = > 1
```

# License

MotionBitmask is released under the MIT license: 

[http://www.opensource.org/licenses/MIT](http://www.opensource.org/licenses/MIT)

# Forking 

Feel free to fork and submit pull requests!