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
end