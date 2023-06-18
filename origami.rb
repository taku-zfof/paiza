# ・1 行目には、折り紙の枚数を表す整数 N および折り紙の 1 辺の長さを表す整数 D が半角スペース区切りで与えられます。
# ・1 + i 行目 (1 ≦ i ≦ N - 1) には整数 d_{i + 1} が与えられます。これは、 i + 1 枚目の折り紙が i 枚目の折り紙に d_{i + 1} cm 重なっていることを表します。
# ・完成した垂れ幕の折り紙部分の面積を整数で出力してください。
# ・出力最終行の末尾に改行を入れ、余計な文字、空行を含んではいけません。

# 自分の得意な言語で
# Let's チャレンジ！！
line = readlines
len = line.length

tate = line[0].chomp.split(' ')[1].to_i

ary = Array.new
i = 1
while i < len
    kasane = line[i].chomp.split(' ')[0].to_i
    ary.push kasane
    i += 1
end

n = 0
yokosum = 0
while n < ary.length
    yokoplus =  tate - ary[n]
    yokosum += yokoplus
    n += 1
end

yoko = tate + yokosum
menseki = yoko * tate

p menseki