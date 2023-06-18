# ・1 行目には、車の数を表す整数 N と、渋滞を定義する整数 M がこの順で半角スペース区切りで与えられます。
# ・続く N - 1 行目の i 行目 (1 ≦ i ≦ N - 1) には、先頭から i 番目の車と i + 1 番目の車の車間距離を表す整数 A_i が与えられます。
# ・入力は合計で N 行となり、入力値最終行の末尾に改行が 1 つ入ります。

# 渋滞の区間が合計で合計で何メートルあるか整数で出力してください。
# 末尾に改行を入れ、余計な文字、空行を含んではいけません。

# 自分の得意な言語で
# Let's チャレンジ！！
line = readlines
len = line.length

count = line[0].chomp.split(' ')[0].to_i
jyutai = line[0].chomp.split(' ')[1].to_i

i = 1
jyutai_sum = 0
while i < len
    syakan = line[i].chomp.split(' ')[0].to_i
    unless syakan > jyutai
        jyutai_sum += syakan
    end 
    i += 1
end

p jyutai_sum