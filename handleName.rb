# 入力から母音を抜いたハンドルネームを出力する

# 自分の得意な言語で
# Let's チャレンジ！！
input_line = gets.chomp

input_line.gsub(/[aiueoAIUEO]/, '')

puts input_line.gsub(/[aiueoAIUEO]/, '')