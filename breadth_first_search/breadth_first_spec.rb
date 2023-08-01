require './breadth_first_search'
require 'pry'

RSpec.describe 'Breadth First Search' do
  describe 'methods' do
    it "uses breadth first search to find the closest node matching a criteria" do
      graph = {}
      graph["matt"] = ["keith", "jomah", "steph"]
      graph["keith"] = ["nick", "calliedog"]
      graph["steph"] = ["zion"]
      graph["jomah"] = ["teo"]
      graph["teo"] = ["jomah", "zion"]
      graph["zion"] = ["steph", "teo", "calliedog"]
      graph["calliedog"] = ["keith", "nick"]
      graph["nick"] = ["calliedog", "keith"]

      search = BreadthFirstSearch.new

      expect(search.find_closest_dog(graph, "matt")).to eq("calliedog is a dooogggieee")
    end
  end
end