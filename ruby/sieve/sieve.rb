require 'Prime'

module BookKeeping
  VERSION = 1
end

# Determine list of primes between 2 (inclusive) and a given limit
class Sieve
  def initialize(limit)
    @limit = limit
  end

  def primes
    range = 2..@limit
    return [] if range.first > range.last
    range.select { |n| Prime.prime?(n) }
  end
end
