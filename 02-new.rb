#!/usr/bin/env ruby

puts "my length is".length
puts "the index is".index('h');
puts 42.even? 
puts 12.abs


num = -12
# Java: Math.abs(num);
puts num.abs


#def say_goodnight(name)
def say_goodnight name
    "Good night, #{name.capitalize}"
    # result = "Good night, #{name.capitalize}"
    # return result
end

puts say_goodnight("zhenglai")
puts(say_goodnight("Junlai"))


# string literal
puts 'hello \nnot another line'
puts "hello \nanother line"




# Array and Hash

a = [1, 2, "3", 4, 5.01]
puts a[2]
puts "The last element: #{a[a.length-1]}"

a[0] = nil
puts "The array now is: #{a.inspect}"


a = [ "hello1", "hello2", "hello3" ]
puts a.inspect
b = %w{ ant bee cat dog }
puts b.inspect

h = {
    "name" => "Zhenglai Zhang",
    "age"  => 27
}

p h
p h['name']
p h['none']


histogram = Hash.new(0)
p histogram['ruby']


# Symbols
NORTH = 1
SOUTH = 2
EAST  = 3
WEST  = 4


def walk(direction)
    if direction == :north
        p "go to north"
    end
end

walk(:north)
h2 = {
    :hero => "hero_value",
    man: "man_value"
}
p h2.inspect

large = 14
puts "large" if large > 12

square = 4
square = square**2 while square < 1000
p square





# Blocks
def call_block
    puts "Start of method"
    yield
    yield
    puts "End of method"
end

call_block { puts "Call code blocks..." }


def who_says_that
    yield("Zhenglai", "hello")
    yield("Junlai", "world")
end

who_says_that {|person,word| puts "#{person} says #{word}" }


# Iteracotrs
animals = %w(bee fox cat dog)
animals.each {|animal| puts animal}
('a'..'z').each {|char| print char }
4.times {|i| print i}



print "You give me #{ARGV.length} arguments\n"
p ARGV

