module BookKeeping
  VERSION = 3
end

class Squares
  def initialize(value)
    @range = 1..value
  end

  def square_of_sum
    @range.sum ** 2
  end

  def sum_of_squares
    (@range.map {|n| n ** 2}).sum
  end

  def difference
    square_of_sum - sum_of_squares
  end
end