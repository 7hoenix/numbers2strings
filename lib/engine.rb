require 'pry'
class Engine
  def run(number_to_convert)
    numbers = number_to_convert.to_s.split("")

    result = convert[numbers[0]]
    (numbers.count - 1).times do |i|
      result = result.product(convert[numbers[i + 1]])
    end

    result.map(&:join)
  end

  private

  def convert
    {
      "0" => [""],
      "1" => [""],
      "2" => ["a", "b", "c"],
      "3" => ["d", "e", "f"],
      "4" => ["g", "h", "i"],
      "5" => ["j", "k", "l"],
      "6" => ["m", "n", "o"],
      "7" => ["p", "q", "r", "s"],
      "8" => ["t", "u", "v"],
      "9" => ["w", "x", "y", "z"]
    }
  end
end
