def subs (str, n) 
  begin
    raise "Input cannot be empty" if n == 0
    sequence = [] 
    for i in 0..2**n-1
      seq = ""
      for j in 0..n-1
        if(i & (1<< j) != 0)
          seq << str[j]
        end
      end
      # puts seq
      sequence.push(seq)
    end
  puts sequence.inspect
  rescue => e 
    puts e.message
  end
end

print "Enter a string : "
input = gets.chomp
n = input.length
subs(input, n)