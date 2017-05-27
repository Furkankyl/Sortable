$LOAD_PATH.unshift File.join(File.dirname(__FILE__))
require "sortingModule"
class Sortable
  attr_accessor :array
  def initialize(array)
    @array = array
  end
  def merge
    Sort.mergeSort(array)
  end
  def heap
    Sort.heapSort(array)
  end
  def quick
    Sort.quickSort(array)
  end
  def insertion
    Sort.insertionSort(array)
  end
end
def main()
  s1 = Sortable.new([1,24,5,6,78,2])
  puts s1.merge.join','
  puts s1.heap.join','
  puts s1.quick.join','
  puts s1.insertion.join','
end
main if __FILE__ == $PROGRAM_NAME
