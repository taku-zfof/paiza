# 今、ある生鮮食品を m[kg] 仕入れました。とても新鮮だったため、生のまま販売したところ、 m[kg] のうち p[%] を売ることができました。
# 次にその売れ残りをすべてお惣菜にして販売したところ、売れ残った量のうち q[%] が売れました
# さて、m[kg] 仕入れたこの食品は最終的に何kg 売れ残ったでしょうか。
# ここで、m, p, q はすべて整数です。
# 売れ残った量 [kg] を小数値で一行に出力してください。ただし、真値との誤差が0.0001 未満である場合にのみ、正答とみなされます。

# 最後は改行し、余計な文字、空行を含んではいけません。

# 自分の得意な言語で
# Let's チャレンジ！！
input = gets.chomp.split(' ')

all = input[0].to_i
shonichi = input[1].to_i * 0.01
futsukame = input[2].to_i * 0.01


shonichi_sell =  all * shonichi
shonichi_nokori = all - shonichi_sell

futsukame_sell = shonichi_nokori * futsukame
futsukame_nokori = shonichi_nokori - futsukame_sell

p futsukame_nokori