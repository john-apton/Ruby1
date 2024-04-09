def divisible () 
  str = "4806"
  n = str.length
  numbers = []

  # def divisible_by_six(num)
  #   return true if(num % 6 == 0)
  #   false
  # end

  # def update_result (s)
  #   puts s
  #   numbers.push(s.to_i)
  # end

  # def check_number (num_str)
  #   # p num_str
  #   # p divisible_by_six(num_str.to_i)
  #   if (num_str[0] == "0")
  #     if num_str.length == 1
  #       update_result(num_str) if divisible_by_six(num_str.to_s)
  #     end
  #   else 
  #       update_result(num_str) if divisible_by_six(num_str.to_s)
  #   end
  # end

  for i in 0..n-1
    for j in 0..n-i-1
      # puts "#{j} to #{n-i-1}"
      sequence = []
      for k in j..n-i-1
        sequence.push(str[k])
      end
      s_text = sequence.join("")
      # puts s_text
      if (s_text[0] == "0")
        if s_text.length == 1
            if (s_text.to_i % 6 == 0)
            numbers.push(n.to_i)
          end
        end
      else 
        # update_result(n) if divisible_by_six(n.to_i)
        if (s_text.to_i % 6 == 0)
          numbers.push(s_text.to_i)
        end
      end
    end

  end
  numbers
end
p divisible()

