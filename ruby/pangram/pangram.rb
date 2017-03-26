module BookKeeping
  VERSION = 4
end

# Class to identify pangrams
class Pangram
  def self.pangram?(input)
    # filter input to only a-z characters, for each char set hash key,
    # return hash length is 26
    alphabet = {}
    input.downcase.tr('^a-z', '').each_char { |char| alphabet[char] = true }
    alphabet.length == 26
  end
end
