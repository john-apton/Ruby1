# c) Counting sort an array

def sort()
  # arr = [2,5,3,0,2,3,0,3]
  arr = [1,0,3,1,3,1]
  # maxArr[arr.max]
  # p arr.max
  count_array = Array.new(arr.max+1,0)
  arr.each { |a| 
    count_array[a] += 1
  }
  # puts countArray.inspect
  output_array = Array.new(arr.max+1,0)
  for i in 0..count_array.length-2
    count_array[i+1] = count_array[i] + count_array[i+1]
  end

  puts count_array.inspect

  while_count = output_array.length-1
  while(while_count >= 0)
    # puts while_count
    puts while_count
    if(while_count == 0)
      output_array[while_count] = 0
    else 
      output_array[while_count] = count_array[while_count-1]
    end
    while_count-=1
  end

  puts output_array.inspect
  # for i in 0..count_array.length-2
  #   count_array[i+1] = count_array[i] + count_array[i+1]
  # end
  
  # countArray.each_with_index {|a,  i| countArray[i+1] = countArray[i]+countArray[i+1]}
  # puts count_array.inspect



  # puts maxArr[2]
  # puts maxArr.each {|e| puts e}
end

sort()