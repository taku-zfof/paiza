# 自分の得意な言語で
# Let's チャレンジ！！
line = readlines
words_count = line[0].to_i

for i in 1..words_count -1 do
    
    word = line[i].to_s
    tsugino_word = line[i + 1].to_s
    
    last = word.slice(-2)
    tsugino_first = tsugino_word.slice(0)
    
    unless last == tsugino_first
        puts "#{last}"+" "+"#{tsugino_first}"
        break
    end
    
    if i == words_count -1
        puts "Yes"
    end
end