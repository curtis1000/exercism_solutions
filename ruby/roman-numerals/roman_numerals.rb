module BookKeeping
  VERSION = 2
end

class Integer
  ROMAN = {
    1 => 'I',
    5 => 'V'
  }.freeze
  def to_roman
    # https://github.com/freeCodeCamp/freeCodeCamp/wiki/Algorithm-Roman-Numeral-Converter
  end
end
