module BookKeeping
  VERSION = 3
end

# I don't even know how to describe what this class does :)
class Raindrops
  DICT = {
    3 => 'Pling',
    5 => 'Plang',
    7 => 'Plong'
  }.freeze

  def self.convert(input)
    ff = FactorFinder.new
    factors = ff.find_common_factors input, DICT.keys
    return input.to_s if factors.length.zero?
    output = ''
    factors.each do |factor|
      output << DICT.fetch(factor)
    end
    output
  end
end

# support class for Raindrops
class FactorFinder
  def find_common_factors(value, list)
    factors = []
    list.each do |test_factor|
      factors.push test_factor if whole_number?(value.to_f / test_factor)
    end
    factors
  end

  def whole_number?(float)
    (float % 1).zero?
  end
end
