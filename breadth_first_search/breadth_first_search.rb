class BreadthFirstSearch
  def initialize
    @queue = []
    @searched = []
  end

  def find_closest_dog(graph, start_name)
    @queue += graph[start_name]
    until @queue == [] do
      person = @queue.shift
      if already_searched?(person) == false
        if is_dog?(person) == true 
          return person + " is a dooogggieee" 
        else
          @queue += graph[person]
          @searched.push(person)
        end
      end
    end
  end

  def add_neighbors(node)
    @queue += node
  end

  def is_dog?(node)
    node.include?("dog")
  end

  def already_searched?(node)
    @searched.include?(node)
  end
end