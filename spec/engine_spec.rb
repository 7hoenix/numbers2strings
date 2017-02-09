require 'rspec'
require './lib/engine'

RSpec.describe Engine do
  # it "handles a simplest case" do
  #   engine = Engine.new

  #   result = engine.run(2)

  #   expected_result = ["a", "b", "c"]
  #   expect(expected_result).to eq(result)
  # end

  # it "maps all numbers to array strings" do
  #   engine = Engine.new

  #   results = [2, 3, 4, 5, 6, 7, 8, 9].map { |num| engine.run(num) }

  #   expected_result = [
  #     ["a", "b", "c"], ["d", "e", "f"], ["g", "h", "i"],
  #     ["j", "k", "l"], ["m", "n", "o"], ["p", "q", "r", "s"],
  #     ["t", "u", "v"], ["w", "x", "y", "z"]
  #   ]
  #   expect(results).to eq(expected_result)
  # end

  it "handles two digit permutations" do
    engine = Engine.new

    results = engine.run(23)

    expected_result = ["ad", "ae", "af", "bd", "be", "bf", "cd", "ce", "cf"]
    expect(results).to eq(expected_result)
  end

  it "handles three digit permutations" do
    engine = Engine.new

    results = engine.run(234)

    expected_result = ["adg", "adh", "adi", "aeg", "aeh", "aei", "afg", "afh", "afi", "bdg",
                       "beg", "bdh", "bdi", "beh", "bei", "bfg", "bfh", "bfi", "cdg", "cdh", "cdi", "ceg",
                       "ceh", "cei", "cfg", "cfh", "cfi"]
    expect(results).to include(*expected_result)
  end
end
