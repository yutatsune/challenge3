class Brave < Character
  def attack(monster)
    damage = offense - (monster.defense / 2)
    if monster.hp <= damage
      monster.hp = 0
    else
      monster.hp -= damage
    end
    puts <<~TEXT
      #{@name}の攻撃！
      #{monster.name}に#{damage}のダメージを与えた！
    TEXT
  end
end
