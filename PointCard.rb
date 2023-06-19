# 1. 通常は購入金額の 1 ％（小数点以下切り捨て）とする
# 2. ただし、3 のつく日は購入金額の 3 ％（小数点以下切り捨て）とする
# 3. ただし、5 のつく日は購入金額の 5 ％（小数点以下切り捨て）とする
# 1行目には今月分のレシートの枚数を表す整数 N が入力されます。続く N 行には各レシートの情報が入力されます。
# すなわち、d_i p_i は i 枚目のレシートが発行された日付が d_i 日であり、このときの購入金額が p_i 円であることを表します。
# 今月末にポイントカードにたまっているポイントの値を１行に出力してください。
# 最後は改行し、余計な文字、空行を含んではいけません。

# 自分の得意な言語で
# Let's チャレンジ！！
line = readlines

maisu = line[0].to_i

i = 1
points = 0
while i < maisu + 1
    date = line[i].chomp.split(' ')[0].to_s
    price = line[i].chomp.split(' ')[1].to_i
    
    if date.include?("5")
        point = price * 0.05
    elsif date.include?("3")
        point = price * 0.03
    else
        point = price * 0.01
    end
    
    points += point.floor
    i += 1
end

p points