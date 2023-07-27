class Quicksort
  def intialize
  end

#Using the divide and conquer method to solve problems with lists recursively.

  # list.sum

  def sum(list)
    return 0 if list.empty?
    num = list.pop()
    sum(list) + num
  end

  # list.count

  def count_items(list)
    return 0 if list.empty?
    list.pop()
    count_items(list) + 1
  end

  # list.max

  def find_largest(list)
    return list.first if list.length == 1
    return nil if list.empty?

    largest = list.pop()
    largest > find_largest(list) ? largest : find_largest(list)
  end

  # Quicksort Code(converted to Ruby)

  def quickly_sort(list)
    return list if list.length < 2
    
    pivot = list.first
    less = list.filter_map { |num| num if num < pivot}
    more = list.filter_map { |num| num if num > pivot}

    (quickly_sort(less) + [pivot] + quickly_sort(more))
  end


end