# 運賃は、i 番目 (1 ≦ i ≦ N) の路線の 1 番目の駅から j 番目 (1 ≦ j ≦ M) の駅まで移動したとき A_{i, j} 円となります。k 番目 (1 ≦ k ≦ j) の駅から j 番目の駅まで移動した場合は、A_{i, j} と A_{i, k} の差額だけ運賃がかかります。j 番目の駅から k 番目の駅に移動する場合も同様です。
# ここで、指定されたルートで電車を用いて目的地に行くことを考えたとき、運賃がいくらになるか計算するプログラムを作成してください。なお、スタート地点は 1 番目の路線の 1 番目の駅であり、現在地が j 番目の駅である場合、どの路線の j 番目の駅も 0 円で移動することが出来ます。
# また、目的地が i 番目の路線の駅となっている場合、i 番目の路線を用いて移動することとします。
# ・1 行目には、路線の数を表す整数 N と、駅の数を表す整数 M がこの順で半角スペース区切りで与えられます。
# ・1 + i 行目 (1 ≦ i ≦ N) には、i 番目の路線において 1 番目の駅から j 番目 (1 ≦ j ≦ M) の駅まで移動するのにいくらかかるかを表す整数 A_{i, j} が半角スペース区切りで与えられます。
# ・1 + N + 1 行目には、ゴールまでに経由すべき駅の数を表す整数 X が与えられます。
# ・2 + N + i 行目 (1 ≦ i ≦ X) には、i 番目に経由すべき駅を表す整数 R_i, S_i が与えられます。これは、現在地から R_i 番目の路線の S_i 番目の駅に向かうべきであることを意味します。
# ・入力は合計で 2 + N + X 行となり、入力値最終行の末尾に改行が 1 つ入ります。
# 指定されたルートを辿った場合にかかる運賃を表す整数を出力してください。


# 自分の得意な言語で
# Let's チャレンジ！！
line = readlines

#情報
rosensu = line[0].chomp.split(' ')[0].to_i
ekisu = line[0].chomp.split(' ')[1].to_i


#ここから指示
keiyusu = line[rosensu + 1].chomp.split[0].to_i


ii = 1
unchin_sum = 0
while ii <=keiyusu
    keiyu_rosen = line[ rosensu + 1 + ii ].chomp.split[0].to_i
    keiyu_eki = line[ rosensu + 1 + ii ].chomp.split[1].to_i
    
    
    if keiyu_eki == line[rosensu + ii ].chomp.split[1].to_i
        unchin = 0
    elsif ii == 1
        unchin = line[keiyu_rosen].chomp.split(' ')[keiyu_eki - 1].to_i
    
    else     
        u = line[keiyu_rosen].chomp.split(' ')[keiyu_eki - 1].to_i - line[keiyu_rosen].chomp.split(' ')[line[rosensu + ii ].chomp.split[1].to_i - 1 ].to_i
        unchin = u.abs
    end
        
    unchin_sum += unchin
    ii += 1
end

p unchin_sum