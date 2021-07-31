
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

setnum = rand(100..9999).to_s
setchar = setnum.chars
setsize = setchar.size
print "文字数は#{setsize}です！がんばって！/n"

  print '質問してください>>'
  ques  = gets.chomp.to_s
  quechar = ques.chars
  quesize = quechar.size

  if setsize != quesize
    print "文字数が異なります！"
  else

  res = checknum(setchar,quechar)
    print "#{res[0]}イート#{res[1]}バイトです！"
  end
