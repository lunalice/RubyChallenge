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
puts string_shuffle("foobar")

# 演習4.3.3
# 1
a = { 'one'=>'uno','two'=>'dos','three'=>'tres' }
a.each {|key,value| p "#{key}のスペイン語は#{value}"}
# 2
person1={:first=>'最初1',:last=>'最後1'}
person2={:first=>'最初2',:last=>'最後2'}
person3={:first=>'最初3',:last=>'最後3'}
params={}
params[:father]=person1
params[:mother]=person2
params[:child]=person3
params.each do |key,value|
   value.each {|key2,value2| p value2 }
end 
# 3
user={}
user[:name]='hoge'
user[:email]='hogehuga@hogehuga'
user[:password_digest]=("a".."z").to_a.shuffle[0..15].join
# 4
# 上書きされるupdateも類似
buff = { "a" => 100, "b" => 200 }
puts buff.merge({ "b" => 300 })

# 演習4.4.1
# 1 rangeコンストラクタ
puts range1 = (1..10)
# 2
puts buff_range = Range.new(1,10)
# 3
if range1 == buff_range
   puts '同じ'
end

# 演習4.4.2
# 1
puts Range.superclass
puts Hash.superclass
puts Symbol.superclass

# 2
class Word < String             # WordクラスはStringクラスを継承する
  # 文字列が回文であればtrueを返す
  def palindrome?
    self == reverse        # selfは文字列自身を表します
  end
end
s = Word.new('level')
puts s.palindrome?

# 演習4.4.3
# 1
class String             # WordクラスはStringクラスを継承する
  # 文字列が回文であればtrueを返す
  def palindrome?
    self == self.reverse        # selfは文字列自身を表します
  end
  def shuffle
    split('').shuffle.join
  end
end
puts "racecar".palindrome?
puts "onomatopoeia".palindrome?
puts "Malayalam".downcase.palindrome?

# 2 3
puts "foobar".shuffle


