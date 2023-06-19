# 今回あなたが出題したレポートには n 問の問題があり、1 問あたりの配点はそれぞれ 100 / n 点です。ここで n は 100 の約数です。

# あなたはレポートに提出期限を設けていました。提出期限から遅れたレポートのうち、遅れた日数が 9 日以下のレポートは得点を 8 割にすることにしました。
# このとき得点に小数点以下が発生した場合切り捨てます。10 日以上遅れたレポートの評価は 0 点とすることにしました。
# レポートの点数が 80 点以上の場合、そのレポートの評価は A となります。
# 70 点以上 79 点以下の場合 B となります。
# 60 点以上 69 点以下の場合 C となります。
# 59 点以下の場合は D となります。
# ・1 行目に学生の人数を表す整数 k、レポートの問題数を表す整数 n がこの順に半角スペース区切りで与えられます。
# ・続く k 行のうちの i 行目 (1 ≦ i ≦ k) には、i 番目の学生のレポートを提出した日を表す整数 d_i、i 番目の学生が正解した問題数を表す整数 a_i がこの順に半角スペース区切りで与えられます。
# ・入力は合計で k + 1 行となり、入力値最終行の末尾に改行が 1 つ入ります。
# ・期待する出力は k 行からなります。
# ・i 行目 (1 ≦ i ≦ k) にはそれぞれ i 番目の学生のレポートの評価を表す英大文字 e_i を出力してください。出力の最後に改行を入れ、余計な文字、空行を含んではいけません。
# ・出力最終行の末尾に改行を入れ、余計な文字、空行を含んではいけません。


# 自分の得意な言語で
# Let's チャレンジ！！
line = readlines

ninzu = line[0].chomp.split(' ')[0].to_i
mondaisu = line[0].chomp.split(' ')[1].to_i
ichimon = 100 / mondaisu
i = 1

while i < ninzu + 1
    date = line[i].chomp.split(' ')[0].to_i
    true_count = line[i].chomp.split(' ')[1].to_i
    if date > 0
        if date > 9
            score = 0
        else
            score = ichimon * true_count * 0.8
        end
    else
        score = ichimon * true_count
    end 
    
    if score < 80
        if score < 70
            if score < 60
                hyouka = "D"
            else
                hyouka = "C"
            end
        else
            hyouka = "B"
        end
    else
        hyouka = "A"
    end
    puts hyouka
    i += 1
end