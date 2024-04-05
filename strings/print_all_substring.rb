def subs (str) 
  len = str.length
  str = str.split("")
  for i in 1..len
    # puts i
    for j in 0..len-1
      # print j
      # puts
      # puts "#{j} => #{i}"
      # puts
      for k in j..i-1
        # puts
        # print "k => #{k}"
        # puts

        print str[k]
        # puts
      end
      puts
    end
    # puts
  end
end

subs("abc")
