class Brave

  # nameのセッター
  def name=(name)
    @name = name
  end

  # nameのゲッター
  def name
    @name
  end

  # hpのセッター
  def hp=(hp)
    @hp = hp
  end

  # hpのゲッター
  def hp
    @hp
  end

  # offenseのセッター
  def offense=(offense)
    @offense = offense
  end

  # offenseのゲッター
  def offense
    @offense
  end

  # defenseのセッター
  def defense=(defense)
    @defense = defense
  end

  # defenseのゲッター
  def defense
    @defense
  end

  brave = Brave.new

  brave.name = "テリー"
  brave.hp = 500
  brave.offense = 150
  brave.defense = 100

  brave.name
  brave.hp
  brave.offense
  brave.defense

end