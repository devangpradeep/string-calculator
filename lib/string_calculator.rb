# frozen_string_literal: true

class StringCalculator
  def add(numbers)
    return 0 if numbers.nil?

    nums_int = numbers.split(/[,\n;]/).map(&:to_i)

    negatives = nums_int.select { |n| n < 0 }

    raise "negative numbers not allowed: #{negatives.join(", ")}" if negatives.any?

    nums_int.sum
  end
end
