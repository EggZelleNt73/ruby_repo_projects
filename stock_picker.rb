def stock_picker(arr)
  # initializing left and right pointers
  l_p = 0 
  r_p = 1

  # initializing day to buy and day to sell
  low_ind = 0
  high_ind = 0

  # using this variables later to count the profit
  low = Float::INFINITY
  max = -Float::INFINITY
  profit = 0
  
  while r_p < arr.length do
    # checking if left pointer value is lower than lowest value already we have
    if arr[l_p] < low
      low = arr[l_p]
    end

    # checking if right pointer value is higher than highest value already we have
    if arr[r_p] > max
      max = arr[r_p]
    end

    # creating variable to use it later
    result = max - low

    # checking if current picked up days have better profit (also cheching result not to be lower than 0)
    if result > 0 && (profit < result)
      profit = result
      # changing our main variables that holds our return days
      low_ind = l_p
      high_ind = r_p
    end

    # in a case when price for one of the later days is lower than current lowest price we already counter (if yes, then we moving left pointer)
    if arr[l_p] > arr[r_p]
      l_p = r_p
      max = arr[r_p]
    end

    r_p += 1
  end
  
  # returning results
  if (low_ind == 0) && (high_ind == 0)
    return "No better days to buy and sell stock to have profit"
  end

  return [low_ind, high_ind]
end

    

days = stock_picker([17,3,6,9,15,8,6,2,20,25,1,25])

if days.is_a?(String)
  puts days
else
  days.each {|day| puts "day: #{day}"}
end