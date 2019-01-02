# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr_sum = 0
  if arr.empty?
    arr_sum = 0
  else
    length = 0
    while length < arr.length
      arr_sum += arr[length]
      length += 1
    end
    
  end
  return arr_sum
end


def max_2_sum arr
  if arr.empty?
    arr_sum = 0
  elsif arr.length == 1
    arr_sum = arr[0]
  else
    arr1 = arr.sort { |x,y| y <=> x }
    arr_sum = arr1[0] + arr1[1]
  end
  
  return arr_sum
end

def sum_to_n? arr, n
  if arr.length <= 1
    return false
  else
     return arr.combination(2).find { |x, y| x + y == n } != nil
  end
  
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  s =~ /\A(?=[^aeiou])(?=[a-z])/i
end

def binary_multiple_of_4? s
  # pattern could have trailing zeroes and trailing zeroes
  s =~ /^(?:[01]*0)?0$/
  
  # Below function is useful for Binary Strings that are clean
  # return Integer("0b" + s) % 4 == 0
end

# Part 3

class BookInStock
  attr_accessor :price 
  attr_accessor :isbn
  def initialize(isbn, price) 
    # Exception:  the ISBN number is the empty string or if the price is less than or equal to zero.
    if price <= 0 || isbn.length == 0
      raise ArgumentError
    else
      # Instance variables
      @isbn = isbn  
      @price = price  
    end
  end
  
  def price_as_string
    "$#{'%.2f' % @price}"
  end
end
