# frozen_string_literal: true

require_relative "../lib/string_calculator"

RSpec.describe(StringCalculator) do
  describe "#add" do
    context "when input is empty string" do
      it "returns 0" do
        calculator = StringCalculator.new
        expect(calculator.add("")).to(eq(0))
      end
    end

    context "when input is a string with a number" do
      it "returns the number" do
        calculator = StringCalculator.new
        expect(calculator.add("1")).to(eq(1))
      end
    end

    context "when input is a string with 2 numbers" do
      it "returns the sum of both numbers" do
        calculator = StringCalculator.new
        expect(calculator.add("1, 5")).to(eq(6))
      end
    end

    context "when input is a string with 3 numbers" do
      it "returns the sum of 3 numbers" do
        calculator = StringCalculator.new
        expect(calculator.add("1, 5, 4")).to(eq(10))
      end
    end

    context "when input is a string of numbers separated by new line" do
      it "returns the sum of 3 numbers" do
        calculator = StringCalculator.new
        expect(calculator.add("1\n5\n4")).to(eq(10))
      end
    end
  end
end
