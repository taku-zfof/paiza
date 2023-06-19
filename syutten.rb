# ・1 行目には、出店する店舗の数を表す整数 N および営業する月数を表す整数 M が半角スペース区切りでこの順で与えられます。
# ・2 行目には、1 店舗あたりの店舗の建設費用を表す整数 A、1 店舗あたりの毎月の人件費を表す整数 B、ラーメン 1 杯あたりの利益を表す整数 C が半角スペース区切りでこの順で与えられます。
# ・続く N 行のうちの i 行目 (1 ≦ i ≦ N) には、i 番目の店舗が M ヶ月間に販売したラーメンの杯数を表す整数 R_i が与えられます。
# ・入力は合計で 2 + N 行となり、入力値最終行の末尾に改行が 1 つ入ります。

# 閉店することになる店舗の数を表す整数を出力してください。
# 末尾に改行を入れ、余計な文字、空行を含んではいけません。

# 自分の得意な言語で
# Let's チャレンジ！！
line = readlines
len = line.length

building_count = line[0].chomp.split(' ')[0].to_i
month = line[0].chomp.split(' ')[1].to_i

buildcost = line[1].chomp.split(' ')[0].to_i
humancost = line[1].chomp.split(' ')[1].to_i * month
ramen_gain = line[1].chomp.split(' ')[2].to_i

i = 2
heiten = 0
while i < len
    ramen_count = line[i].chomp.split(' ')[0].to_i
    gain = ramen_gain * ramen_count 
    cost = buildcost + humancost
    if gain < cost
        heiten += 1
    end 
    i += 1
end

p heiten