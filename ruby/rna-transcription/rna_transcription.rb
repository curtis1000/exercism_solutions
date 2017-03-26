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
    output = ''
    sequence.split('').each do |char|
      begin
        complement = COMPLEMENTS.fetch(char.to_sym)
      rescue
        return ''
      end
      output << complement.to_s
    end
    output
  end
end
