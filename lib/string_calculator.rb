# frozen_string_literal: true

class StringCalculator
  def add(numbers)
    return 0 if numbers.nil?

    numbers.split(/[,\n]/).map(&:to_i).sum
  end
end
