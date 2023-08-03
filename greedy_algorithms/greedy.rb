class Greedy
  def initialize
    @final_stations = []
  end

  # My Try
  def find_stations(states_needed, stations)

    until states_needed == [] do
      most_covering_station = nil
      most_covering_station_count = 0
      count = 0

      stations.each do |name, states|
        states.each do |state|
          if states_needed.include?(state)
            count += 1
          end
        end
        if count > most_covering_station_count
          most_covering_station = name
          most_covering_station_count = count
        end
        count = 0
      end
      @final_stations << most_covering_station
      stations[most_covering_station].each do |state|
        states_needed.delete(state)
      end      
      stations.delete(most_covering_station)
      most_covering_station = nil
      most_covering_station_count = 0
    end  
    @final_stations
  end
end

