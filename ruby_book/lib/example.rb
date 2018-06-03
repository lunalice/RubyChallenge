# 演習4.2.2
cyty = "市町村"
prefecture = "都道府県"
# 演習2
puts cyty + " " + prefecture
# 演習3
puts cyty + "\t" + prefecture
# 演習4
puts cyty + '\t' + prefecture

# 演習4.2.3
# 1
puts "racecar".length
# 2
puts "racecar".reverse
# 3
s = "racecar"
puts s == s.reverse
# 4
puts "It's a palindrome!" if s == s.reverse
# 演習4.2.4
# 1
def palindrome_tester(s)
   if s == s.reverse
     puts "It's a palindrome!"
   else
     puts "It's not a palindrome."
   end
end

# 2
palindrome_tester("racecar")
palindrome_tester("onomatopoeia")
# 3
puts palindrome_tester("racecar").nil?

# 演習4.3.1
# 1
puts a = "A man, a plan, a canal, Panama".split(",")
# 2
puts s = a.join()
# 3
puts s = s.split(" ").join
palindrome_tester(s)
puts s.downcase
# 4
puts ("a".."z").to_a[6]

# 演習4.3.2
# 1
(0..16).to_a.each {|s| puts s**2}
# 2
def yeller(s)
   puts s.map{|a| a.upcase}.join
end
yeller(["o", "l", "d"])
# 3
def random_subdomain()
   ("a".."z").to_a.shuffle[0..7].join
end
puts random_subdomain()
# 4
def string_shuffle(s)
   s.split('').shuffle.join
end
string_shuffle("foobar")

# 演習4.3.3
# 1
a = { 'one'=>'uno','two'=>'dos','three'=>'tres'}
a.map {|key,value| "#{key}のスペイン語は#{value}"}
# 2
person1 
person2
person3
