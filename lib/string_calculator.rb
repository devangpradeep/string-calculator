# frozen_string_literal: true

class StringCalculator
  def add(numbers)
    return 0 if numbers.nil?

    nums_int = numbers.split(/[,\n;]/).map(&:to_i)

    negative = nums_int.find { |n| n < 0 }
    raise "negative numbers not allowed: #{negative}" if negative

    nums_int.sum
  end
end
