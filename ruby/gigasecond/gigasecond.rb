module BookKeeping
  VERSION = 5
end

# compute one billion seconds after a given time
class Gigasecond
  def self.from(time)
    time + 1_000_000_000
  end
end
