def lcs(str1, str2)
  common = []
  str1.chars.each {|s|
    str2.chars.each {|s2|
      if(s == s2 && !common.include?(s))
        common[common.length] = s
        break
      end
    }
    # if (str2.include?(s) && !common.include?(s))
    #   common.push(s)
    # end
  }
  common
end

s1 = "AGGTAB"
s2 = "GXTXAYB"
puts lcs(s1,s2).uniq