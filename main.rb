require './character'
require './brave'
require './monster'

brave = Brave.new(name: 'ゆうしゃ', hp: 238, offense: 203, defense: 129)
monster = Monster.new(name: 'アークデーモン', hp: 210, offense: 140, defense: 80)
# monster = Monster.new(name: 'シドー', hp: 250, offense: 255, defense: 255)

puts "#{monster.name}があらわれた！"
while true
  brave.attack(monster) if brave.hp > 0
  monster.attack(brave) if monster.hp > 0
  puts <<~TEXT
    *=*=*=*=*=*=*=*=*=*=*
    【#{brave.name}】HP: #{brave.hp}
    【#{monster.name}】HP: #{monster.hp}
    *=*=*=*=*=*=*=*=*=*=*
  TEXT
  break if brave.hp == 0 || monster.hp == 0
end
if monster.hp == 0
  puts "#{monster.name}をやっつけた！"
else
  puts "#{brave.name}はしんでしまった！"
end
