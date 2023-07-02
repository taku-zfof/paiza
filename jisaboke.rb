# 自分の得意な言語で
# Let's チャレンジ！！
line = readlines
nisuu = line[0].to_i #日数

ary = []
for i in 1..nisuu do
    genchijikan_syuppatsu = line[i].chomp.split(' ')[0].to_i #出発時の現地時間
    idoujikan = line[i].chomp.split(' ')[1].to_i #移動時間
    genchijikan_touchaku = line[i].chomp.split(' ')[2].to_i #移動時間
    
    ichinichi = genchijikan_syuppatsu + idoujikan + (24 - genchijikan_touchaku)
    ary.push(ichinichi)
end
p ary.min
p ary.max 
