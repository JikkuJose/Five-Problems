class LargestPossible
  def self.for(array)
    array.map(&:to_s).sort.reverse.join.to_i
  end
end
