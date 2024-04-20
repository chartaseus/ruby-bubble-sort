def bubble_sort(array)
  sorted = false

  while sorted == false
    sorted = true # break loop if there's no more unsorted pair

    array.each_with_index do |item, index|
      next if index == array.length - 1

      next unless item > array[index + 1]

      sorted = false # continue loop if there is still unsorted pair
      array[index] = array[index + 1]
      array[index + 1] = item
    end
  end
  array
end

bubble_sort([4, 3, 78, 2, 0, 2])
