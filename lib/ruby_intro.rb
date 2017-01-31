# When done, submit this entire file to the autograder.

# Part 1

#GitHub sync test

def sum arr
  # YOUR CODE HERE
  if arr.empty?
    return 0
  end
  count = 0
  arr.each { |x| count += x }
  #print count
  return count
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.empty?
    return 0
  end
  
  if arr.length == 1
    return arr[0]
  end
  
  sorted = arr.sort { |x, y| y <=> x }
  return sorted[0] + sorted[1]
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  combos = arr.combination(2).map { |x, y| x + y }
  if combos.include?(n)
    return true
  else
    return false
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.empty?
    return false
  end
  
  lower_cons = "bcdfghjklmnpqrstvwxyz"
  upper_cons = "BCDFGHJKLMNPQRSTVWXYZ"
  first_letter = s[0,1]
  print first_letter
  if lower_cons.include? first_letter
    return true
  elsif upper_cons.include? first_letter
    return true
  end
  
  return false
  #Could also do the inverse by saying return false if it starts with a number or vowel.
  #if s.start_with? lower_cons or upper_cons
  #  return true
  #else
  #  return false
  #end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  #Check the validity of the string first
  if s.empty?
    return false
  end
  s.split('').each { |x|
    print x
    if (x != '1') and (x != '0')
      return false
    end
  }
  #Convert to binary
  bin_result = s.to_i(2)
  #Check if the number is a multiple of 4
  if (bin_result % 4) == 0
    return true
  end
  
  return false
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(book_isbn, book_price)
    raise ArgumentError, "Please provide an ISBN" if book_isbn.empty?
    raise ArgumentError, "Please enter a positive price" if (book_price <= 0)
    @isbn = book_isbn
    @price = book_price
  end
  
  attr_accessor :isbn, :price
  
  def price_as_string
      #return "$#{@price.round(2)}" #doesn't work because it doesn't add an additional 0 if necessary
      return "$#{format("%.2f", @price)}"
  end
end
