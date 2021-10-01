class Monster < Character
  attr_reader :name, :offense, :defense
  attr_accessor :hp

  def attack(brave)
    @damage = offense - (brave.defense / 2)
    if brave.hp <= @damage
      brave.hp = 0
    else
      brave.hp -= @damage
    end
    puts <<~TEXT
      #{@name}の攻撃！
      #{brave.name}に#{@damage}のダメージを与えた！
    TEXT
  end
end
