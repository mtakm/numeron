
def checknum(hoge,fuga)
  eat = 0
  bite = 0
  hoge.each_with_index do |n, i|
    fuga.each_with_index do |k, j|
      eat += 1 if n == k && i == j
      bite += 1 if n == k && i != j
    end
  end
  return eat, bite
end

def setnumber(num)
  array = ["0","1","2","3","4","5","6","7","8","9"]
  num = num.to_i
  a = array.shuffle.shift(num)
  return a
end

print "何文字でヌメロンをしますか？>>"
num = gets
setchar = setnumber(num)
setsize = setchar.size
print "お題は#{setsize}文字です！がんばって！"

flag = 0

while flag == 0 do
  print '質問をどうぞ>>'
  ques  = gets.chomp
  quechar = ques.chars
  quesize = quechar.size

  if setsize != quesize
    print "文字数が異なります！"
  else
    res = checknum(setchar,quechar)
    print "#{ques}は#{res[0]}イート#{res[1]}バイトです！"
    flag += 1 if res[0] == setsize
  end
end

print "正解です！"
