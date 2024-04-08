def bubble_sort(arr)
  for i in 0..arr.length-1
    for j in 0..arr.length-1
      if(arr[i] < arr[j])
        temp = arr[i]
        arr[i] = arr[j]
        arr[j] = temp
      end
      # puts 
    end
    # puts
  end
  arr
end

t = 0
unsorted =[]

loop do
  puts "Enter number #{t} or Enter 'e' after giving the input : "
  input = gets.chomp
  break if(input == "e")
  begin
    throw "Input cannot be empty" if input == ""
    throw "Only numbers are valid" if input != input.to_i.to_s
    unsorted.push(input.to_i)
    t +=1
    rescue => e 
    puts e.message
  end
end

puts bubble_sort(unsorted)