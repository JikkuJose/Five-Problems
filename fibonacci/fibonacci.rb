class Fibonacci
  @memory = {}

  def self.of(index)
    @memory[index] ||=
      index < 2 ? index : of(index - 2) + of(index - 1)
  end

  def self.first_100
    100.times.map { |index| of(index) }
  end
end
