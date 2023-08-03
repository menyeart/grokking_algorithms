require "./greedy"
require 'pry'

RSpec.describe "Greedy" do
  describe "methods" do
    it "finds sets of radio stations to cover states" do
      greedy = Greedy.new
      states_needed = ["mt", "wa", "or", "id", "nv", "ut", "ca", "az"]

      stations = {
        "kone" => ["id", "nv", "ut"],
        "ktwo" => ["wa", "id", "mt"],
        "kthree" => ["or", "nv", "ca"],
        "kfour" => ["nv", "ut"],
        "kfive" => ["ca", "az"]
                }

    expect(greedy.find_stations(states_needed, stations)).to eq(["kone", "ktwo", "kthree", "kfive"])
    end
  end
end