# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  sum = 0
  arr.each do |element|
    sum += element
  end
  sum
end

def max_2_sum(arr)

  return 0 if arr.empty?

  return arr[0] if arr.length == 1

  sorted_arr = arr.sort.reverse

  sum_of_two_largest = sorted_arr[0] + sorted_arr[1]

  sum_of_two_largest
end

def sum_to_n?(arr, n)
  complements = {}

  arr.each do |element|
    
    complement = n - element

    return true if complements[complement]

    complements[element] = true
  end

  return false
end


# Part 2

def hello(name)
  "Hello, #{name}"
end


def starts_with_consonant?(s)
  return false if s.empty? || !s[0].match?(/[a-zA-Z]/)
  s[0].match?(/^[b-df-hj-np-tv-z]/i)
end


def binary_multiple_of_4?(s)
 
  return false unless s.match?(/^[01]+$/)

  number = s.to_i(2)
  number % 4 == 0
end


# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError, 'ISBN number cannot be empty' if isbn.empty?
    raise ArgumentError, 'Price must be greater than zero' if price <= 0

    @isbn = isbn
    @price = price
  end

  def price_as_string
    format('$%.2f', price)
  end
end

