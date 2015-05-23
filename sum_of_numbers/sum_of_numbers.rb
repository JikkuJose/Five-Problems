class SumOfNumbers
  def initialize(numbers)
    @numbers = numbers
  end

  def for_loop
    sum = 0

    for number in @numbers do
      sum += number
    end

    sum
  end

  def while_loop
    sum = 0
    i = 0

    while @numbers.size > i
      sum += @numbers[i]
      i += 1
    end

    sum
  end

  def recursive_summation
    recursion(@numbers.size - 1)
  end

  def recursion(index)
    return 0 if index < 0
    @numbers[index] + recursion(index - 1)
  end
end
