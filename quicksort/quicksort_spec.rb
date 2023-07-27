require './quicksort'
require 'pry'

RSpec.describe "Quicksort" do
  describe "Quicksort method examples" do
    it "sums a list of numbers" do
      sort = Quicksort.new

      expect(sort.sum([1,2,3,4,5])).to eq(15)
      expect(sort.sum([])).to eq(0)
      expect(sort.sum([1])).to eq(1)
      expect(sort.sum([-1,-2,-3])).to eq(-6)
    end

    it "counts the number of items in a list" do
      sort = Quicksort.new

      expect(sort.count_items([1,2,3,4,5])).to eq(5)
      expect(sort.count_items([])).to eq(0)
      expect(sort.count_items([1])).to eq(1)
      expect(sort.count_items([-1,-2,-3])).to eq(3)
    end

    it "can find the maximum number in a list" do
      sort = Quicksort.new

      expect(sort.find_largest([1,2,3,4,5])).to eq(5)
      expect(sort.find_largest([])).to eq(nil)
      expect(sort.find_largest([1])).to eq(1)
      expect(sort.find_largest([-1,-2,-3])).to eq(-1)
    end
  end
end