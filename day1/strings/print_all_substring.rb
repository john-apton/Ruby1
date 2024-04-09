def subs (str) 
  len = str.length
  str = str.split("")
  result = []
  for i in 1..len
    for j in 0..len-1
      res  = ""
      for k in j..i-1
        # print "k => #{k}"
        res += str[k]
      end
      result.push(res) if !res.empty?
    end
  end
  puts result
end

subs("abcd")
