# def subs (str) 
#   len = str.length # 3
#   str = str.split("")
#   for i in 0..len-1
#     # puts i
#     for j in 0..len-i-1
#       print "j => #{len-j-i} "
#       for k in i..len-j-i-1
#         # print 
#         print "K => #{k} "
#         # print str[k]
#       end
#       puts
#     end
#   puts
#   end
# end

# subs("abc")


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
