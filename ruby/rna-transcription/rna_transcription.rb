module BookKeeping
  VERSION = 4
end

# return rna complement of dna sequence
class Complement
  COMPLEMENTS = {
    C: :G,
    G: :C,
    T: :A,
    A: :U
  }.freeze
  def self.of_dna(sequence)
    sequence.chars.reduce('') do |memo, char|
      return '' unless COMPLEMENTS.key?(char.to_sym)
      memo + COMPLEMENTS.fetch(char.to_sym).to_s
    end
  end
end
