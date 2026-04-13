# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.sum
end

def max_2_sum arr
  # YOUR CODE HERE  
  top_two = arr.sort.last(2)
  top_two.sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  for i in 0..arr.length - 2
    for j in i+1..arr.length - 1
      return true if arr[i] + arr[j] == n
    end
  end
  
  false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  return false if s.empty?
  first = s[0].downcase
  first.match?(/[a-z]/) && !"aeiou".include?(first)
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return false unless s.match?(/\A[01]+\z/)
  s == "0" || s.end_with?("00")
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError, "ISBN cannot be empty" if isbn.empty?
    raise ArgumentError, "Price must be greater than zero" if price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    "$#{"%.2f" % @price}"
  end
end