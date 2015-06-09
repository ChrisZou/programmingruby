def Integer.all
  Enumerator.new do |yielder, n: 0|
    loop { yielder.yield(n+=1) }
  end.lazy
end

# def palindrome?(n)
#   str = n.to_s
#   str == str.reverse
# end

# p Integer.all.first (10)
# p Integer.all.select{|val| val % 3== 0}.select{|val|palindrome?(val)}.first (10)
# multiple_of_three =  Integer.all.select{|val| val % 3== 0}
# p multiple_of_three.first(10)
# m3_palindrome = multiple_of_three.select{|val|palindrome?(val)}
# p m3_palindrome.first(10)

multiple_of_3 = -> n { n % 3 == 0 }
palindrome = -> n {n.to_s == n.to_s.reverse}

p Integer.all.select(&multiple_of_3).select(&palindrome).first(10)
