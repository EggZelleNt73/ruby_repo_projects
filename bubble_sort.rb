def bubble_sort(arr)
  loop do
    trigger = false
    (0...(arr.length - 1)).each do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        trigger = true
      end
    end

    break unless trigger
  end

  return arr
end 

arr = bubble_sort([4,3,78,2,0,2])
arr.each{|value| puts value}