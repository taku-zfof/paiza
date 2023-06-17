# ・1 行目にはそれぞれ整数 N, X, Y がこの順で半角スペース区切りで与えられます。これらは応募者が N 人であることを示し、X の倍数番目の応募者がプレゼント A の当選者となり、Y の倍数番目の応募者がプレゼント B の当選者となることを示します。
# ・入力は 1 行となり、末尾に改行が 1 つ入ります。
# ・期待する出力は N 行からなります。
# ・i 行目 (1 ≦ i ≦ N) にはそれぞれ i 番目の応募者の当選情報を出力してください。
# ・プレゼント A に当選しているとき、大文字アルファベットの A を、プレゼント B に当選しているとき、大文字アルファベットの B を、プレゼント A、Bの両方当選しているとき、大文字アルファベットの AB を出力し、当選していないとき、大文字アルファベットの N を出力してください。
# ・出力最終行の末尾に改行を入れ、余計な文字、空行を含んではいけません。

# 自分の得意な言語で
# Let's チャレンジ！！
input_line = gets.split(' ')
count = input_line[0].to_i
a_number = input_line[1].to_i
b_number = input_line[2].to_i

n = 1
while n < count + 1
    if n % a_number == 0
        if n % b_number == 0
            puts "AB"
        else
            puts "A"
        end
    elsif n % b_number == 0
        puts "B"
    else
        puts "N"
    end
    n += 1
end