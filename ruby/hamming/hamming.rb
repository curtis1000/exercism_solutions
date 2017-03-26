require 'pry-byebug'

module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end

# Hamming
class Hamming
  def self.compute(a, b)
    # for each char in a, count inequality in b
    array_a = a.split('')
    array_b = b.split('')
    raise ArgumentError if array_a.length != array_b.length
    counter = 0
    array_a.each_index do |i|
      if i < array_b.length
        next if array_b[i] == array_a[i]
      end
      counter += 1
    end
    counter
  end
end
