class Brave

  attr_reader :name, :offense, :defense
  attr_accessor :hp

  def initialize(**params)
    @name = params[:name]
    @hp = params[:hp]
    @offense = params[:offense]
    @defense = params[:defense]
  end

  def attack(monster)
    puts "#{@name}の攻撃"

    attack_num = rand(4)

    if attack_num == 0
      damage = calculate_special_attack
    else
      damage = @offense - monster.defense
    end

    monster.hp -= damage

    puts "#{monster.name}は#{damage}を受けた"
    puts "#{monster.name}の残りHPは#{monster.hp}だ"

  end

  def calculate_special_attack
    puts "calculate_special_attackを呼び出した。"
  end

end

class Monster
  
  attr_reader :name, :offense, :defense
  attr_accessor :hp

  def initialize(**params)
    @name = params[:name]
    @hp = params[:hp]
    @offense = params[:offense]
    @defense = params[:defense]
  end

end

  brave = Brave.new(name:"テリー",hp:500,offense:150,defense:100)
  monster = Monster.new(name:"スライム",hp:250,offense:200,defense:100)
  brave.attack(monster)
