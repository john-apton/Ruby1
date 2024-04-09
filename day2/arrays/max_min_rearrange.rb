# h) Rearrange an array using maximum minimum form

def rearrange (arr,n) 
  left = 0
  right = n-1
  for i in left..right
    if(right-i == left)
      print arr[i]
      break
    elsif (right-i > left)
      print arr[right-i]," ", arr[left]
      print " "
      left += 1
    end
  end
end

puts "Enter array (eg: 1,2,3,4,5,6) : "
input = gets.chomp
begin
  unless input.match?(/^\d+(,\d+)*$/)
  raise "Invalid input. Please enter comma-separated integers."
  end
  input = input.split(",")
  rearrange(input.map(&:to_i), input.size)
rescue => e
  STDERR.puts(e)
end
