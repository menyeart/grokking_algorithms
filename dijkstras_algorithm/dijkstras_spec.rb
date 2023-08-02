require './dijkstras'
require 'pry'

RSpec.describe "Dijkstras" do
  describe "methods" do
    it "Is an instance of Dijkstras" do
      djks = Dijkstras.new

      expect(djks).to be_an_instance_of(Dijkstras)
    end

    it "Can find the quickest path through a graph" do
      graph = {
        :start => {:a => 6, :b => 2},
        :a => {:fin => 1},
        :b => {:a => 3, :fin => 5},
        :fin => {}
      }
      
      inf =  Float::INFINITY

      costs = {
        :a => 6,
        :b => 2,
        :fin => inf
      }

      parents = {
        :a => "start",
        :b => "start",
        :fin => nil
      }

      djks = Dijkstras.new

      djks.find_quickest(graph, costs, parents)

      expect(parents).to eq({})
    end
  end
end