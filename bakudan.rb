# あなたは今、とある戦略ゲームをプレイしています。
# ゲームの中で、敵を攻撃するために、フィールドに爆弾を仕掛けました。
# 敵がフィールド内に入ったところで一気に爆弾を点火し、敵に攻撃をする寸法です。

# フィールドは縦 H 行、横 W 行のマス目としてあらわされ、これらのマス目のうちのいくつかに爆弾が仕掛けてあります。
# i 行目、j 列目の爆弾が爆発すると、i 行目全体と j 列目全体に爆風が広がります。
# ・1 行目には、フィールドの行数、列数を表す整数 H, W がこの順でスペース区切りで与えられます。
# ・続く H 行のうちの i 行目 (1 ≦ i ≦ H) には半角記号 "." および "#" からなる長さ W の文字列 s_i が与えられます。s_i の j 番目 (1 ≦ j ≦ W) の文字は、"#" の場合にはそのマスに爆弾を設置していることを、"." の場合は設置していないことを表します。
# ・入力は合計で H + 1 行となり、入力値最終行の末尾に改行が 1 つ入ります。
# 爆風の広がるマスの数を整数で出力してください。
# 出力の最後に改行を入れ、余計な文字、空行を含んではいけません。

# 自分の得意な言語で
# Let's チャレンジ！！
line = readlines
tate = line[0].chomp.split(' ')[0].to_i #縦に何行か
yoko = line[0].chomp.split(' ')[1].to_i #横に何列か
sum = 0
ary = []
for i in 1..tate do #全行繰り返す
    
    ichigyou = line[i].chomp.split("")
    ary.push(ichigyou)

    for n in 0..yoko-1 do #全列やる
        if ichigyou[n] == "#"
            ichigyou.map!{|x| x=="." ? "*" : x}
        end
    end

end

for i in 0..tate-1 do #全行繰り返す
    
    for n in 0..yoko-1 do #全列やる
        if ary[i][n] == "#" #その行のn番目が爆弾だったら
            for w in 0..tate-1 do #全行繰り返す
                ary[w][n] = "*"
            end
        end
    end
    
end

for i in 0..tate-1 do
    sum +=  ary[i].count("*")
end
p sum