# frozen_string_literal: true

require_relative "../lib/string_calculator"

RSpec.describe(StringCalculator) do
  let!(:calculator) { StringCalculator.new }
  describe "#add" do
    context "when input is empty string" do
      it "returns 0" do
        expect(calculator.add("")).to(eq(0))
      end
    end

    context "when input is a string with a number" do
      it "returns the number" do
        expect(calculator.add("1")).to(eq(1))
      end
    end

    context "when input is a string with 2 numbers" do
      it "returns the sum of both numbers" do
        expect(calculator.add("1, 5")).to(eq(6))
      end
    end

    context "when input is a string with 3 numbers" do
      it "returns the sum of 3 numbers" do
        expect(calculator.add("1, 5, 4")).to(eq(10))
      end
    end

    context "when input is a string of numbers separated by new line" do
      it "returns the sum of 3 numbers" do
        expect(calculator.add("1\n5\n4")).to(eq(10))
      end
    end

    context "when using a custom delimiter" do
      it "returns the sum of numbers" do
        expect(calculator.add("//;\n1;2")).to(eq(3))
      end
    end

    context "when input has a negative number" do
      it "throws an exception" do
        expect { calculator.add("-1,2") }.to(raise_error(RuntimeError, "negative numbers not allowed: -1"))
      end
    end

    context "when input has many negative number" do
      it "throws an exception with all negative numbers in the exception message" do
        expect do
          calculator.add("-1,-2, -3, 6")
        end.to(raise_error(RuntimeError, "negative numbers not allowed: -1, -2, -3"))
      end
    end

    context "when input has a number greater than 1000" do
      it "ignores the number greater than 1000" do
        expect(calculator.add("2, 1001")).to(eq(2))
      end
    end
  end
end
