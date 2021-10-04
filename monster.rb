class Monster < Character
  def attack(brave)
    damage = offense - (brave.defense / 2)
    if brave.hp <= damage
      brave.hp = 0
    else
      brave.hp -= damage
    end
    puts <<~TEXT
      #{@name}の攻撃！
      #{brave.name}は#{damage}のダメージを受けた！
    TEXT
  end
end
