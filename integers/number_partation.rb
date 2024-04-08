def findDivision (str = "1220", n = str.length, a = 12, b = 3)
  def check_divisible(p_1, p_2, a , b)
    is_divisible = true
    is_divisible = false if !(p_1.to_i % a == 0 and p_2.to_i % b == 0)
    is_divisible
  end

  def print_result (p1=0, p2=0)
    "YES #{p1} #{p2}" 
  end

  def partations (str = "123", n=3)
    part1_length = (str.length/2.to_f).ceil
    part1 = str[0,part1_length]
    part2 = str[part1_length, n]
    return [part1, part2]
  end

  if(n%2 != 0)
    # part1 = str[0,part1_length]
    # part2 = str[part1_length, n]
    part1, part2 = partations(str, n)
    is_divisible = check_divisible(part1, part2, a , b)
    puts is_divisible ? print_result(part1, part2) : "No"
    return
  end

  result = "NO" 
  for i in 0..1
    # part1 = str[0, n/2+i]
    # part2 = str[n/2+i, n] 
    part1, part2 = partations(str, n)
    is_divisible = check_divisible(part1, part2, a , b)
    if(is_divisible)
      result =  print_result(part1, part2)
      break
    end
  end
  puts result
end

findDivision()
