class Dijkstras
  def initialize
    @processed = []
  end

  def find_quickest(graph, costs, parents)
    node = find_lowest_cost_node(costs)
    new_cost = 0
    until node == nil
      cost = costs[node]
      neighbors = graph[node]
      neighbors.each do |key, value|
        new_cost = cost + value
        if costs[key] > new_cost
          costs[key] = new_cost
          parents[key] = node
        end
      end    
    @processed << node
    node = find_lowest_cost_node(costs)   
    end 
  end

  def find_lowest_cost_node(costs)
    lowest_cost = Float::INFINITY
    lowest_cost_node = nil 

    costs.each do |node, cost|
      if cost < lowest_cost && @processed.include?(node) != true
        lowest_cost =  cost
        lowest_cost_node = node
      end
    end
    lowest_cost_node
  end

end