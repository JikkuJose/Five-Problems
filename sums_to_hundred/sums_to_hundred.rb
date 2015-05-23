class SumsToHundred
  def self.all
    new.all
  end

  def all
    all_possibilities.times.map do |i|
      symbols = i.to_s(3).rjust(8, "0").split("").map { |bit| map_symbol(bit) }
      array = numbers.zip(symbols).flatten.compact - ["_"]
      sum = eval array.join
      sum == 100 ? array : nil
    end.compact
  end

  def numbers
    (1..9).to_a
  end

  def all_possibilities
    6561
  end

  def map_symbol(index)
    {
     "0" => "_",
     "1" => "+",
     "2" => "-"
    }[index]
  end
end
