--マインクラフトチュートリアル4

local gold = --鉱石の名前を変数に入れよう！
local redstone = --鉱石の名前を変数に入れよう！
local lapis = --鉱石の名前を変数に入れよう！
local diamond = --鉱石の名前を変数に入れよう！


-- 鉱石を調べる関数を作ろう！
function inspectBlock()
local ret = --変数retを初期化しよう！
local success, data = turtle.inspect() 
if  then --調べたdataのnameの部分が鉱石の名前と一致するか調べよう！
    ret = --true 
end
return --trueかfalseのどちらかが戻り値として返ってくるようにしよう！
end

-- 探索しながら掘る関数を作ろう！
function searchDig() 
if  then --もし鉱石を調べて一致したら
    turtle.dig() 
    turtle.forward()
    -- 鉱石の先も掘る
    for i = 1, 4 do
        if  then --もし鉱石を調べて一致したら
            --掘る
        end
        --回転しながら調べる
    end
--元の場所に戻る
end 
end

--採掘した回数を数える関数を作ろう！
function kaitenBori(down) 
    local count = --変数countを初期化しよう
    for i =  do --downの回数だけ繰り返すようにしよう！
        local result = turtle.digDown() --trueかfalseが入る
        if result == true then
            --countを1づつ増やせるようにしよう！
        else 
            break
        end

        turtle.down() 
        for i = 1, 4 do
         --回転しながら4方向の鉱石を調べよう！
        end 
    end
    return count - 1 
end

--上昇する関数を作ろう！
function backToHome(up) 
    for  do --up回だけ繰り返す
        --上昇
    end 
end

local args = {} --配列の中に値を入れよう
local n = args[] --配列の一番目をnの中に入れよう

-- 燃料の補充
turtle.select(1) 
turtle.refuel()

local up = --kaitenbori()の引数にnを渡したときの値を入れよう 
backToHome(up)

for j = 1, 4 do 
    turtle.place() 
    turtle.turnLeft()
end

turtle.up() 
turtle.placeDown()

-- チェストにアイテムを格納するプログラムを書こう！
for i = 1, 16 do 
    --16個分のスロットを調べてアイテムをチェストに入れよう！
end