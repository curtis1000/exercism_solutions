module BookKeeping
  VERSION = 2
end

class Integer
  ROMAN = {
    1 => 'I',
    5 => 'V'
  }.freeze
  def to_roman
    n = to_i
    return '' unless ROMAN.key?(n)
    ROMAN.fetch(n)

    output = ''

    output << 'IX' if (n % 10) == 9


  end
end
