module Sort

  def self.mergeSort(list)
    return list if list.size <= 1
    mid   = list.size / 2
    left  = list[0, mid]
    right = list[mid, list.size]
    mergeLR(mergeSort(left), mergeSort(right))
  end

  def self.mergeLR(left, right)
    sorted = []
    until left.empty? || right.empty?
      if left.first <= right.first
        sorted << left.shift
      else
        sorted << right.shift
      end
    end
    sorted.concat(left).concat(right)
  end
  def self.heapSort(array)
  n = array.size
  a = [nil] + array             # heap root [0]=>[1]
  (n / 2).downto(1) do |i|
    down_heap(a, i, n)
  end
  while n > 1
    a[1], a[n] = a[n], a[1]
    n -= 1
    down_heap(a, 1, n)
  end
  a.drop(1)                     # heap root [1]=>[0]
end

def self.down_heap(a, parent, limit)
  wk = a[parent]
  while (child = 2 * parent) <= limit
    child += 1  if child < limit and a[child] < a[child + 1]
    break  if wk >= a[child]
    a[parent] = a[child]
    parent = child
  end
  a[parent] = wk
end
  def self.quickSort(list)
    return list if list.size <= 1
    pivot = list.sample
    left, right = list.partition { |e| e < pivot }
      quickSort(left) + quickSort(right)
  end
  def self.insertionSort(array)
    array.each_with_index do |el,i|
      j = i - 1
      while j >= 0
        break if array[j] <= el
        array[j + 1] = array[j]
        j -= 1
      end
      array[j + 1] = el
    end
  end
end
