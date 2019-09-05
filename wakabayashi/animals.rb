
animals = ["dog", "cat", "rabbit", "turtle", "lion"]

random = Random.new()
answer = animals[random.rand(5)]

puts '３回以内に動物を当ててください。選択肢は以下の通り'
animals.each do |animal|
    puts animal
end

3.times do |timesCount|
    puts "#{timesCount + 1}回目"
    input = gets.chomp # chompは改行を取り消す
    if answer == input then
        puts "大正解！!"
        break
    else
        puts "ちがうよ！"
        if timesCount == 2 then
            puts "残念！正解は...#{answer}でした〜"
        end
    end
end
