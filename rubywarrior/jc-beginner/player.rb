require 'pry'


class Player
  def play_turn(warrior)
    @health ||= 20

    # add your code here
    if warrior.feel.empty?
      #binding.pry
      if warrior.health >= 20 || (warrior.health < @health)
        warrior.walk!
      # elsif warrior.feel.captive?
      #   warrior.rescue!
      elsif @health != nil && !(warrior.health < @health)
        warrior.rest!
      end
    else
      if !warrior.feel.captive?
        warrior.attack!
      else
        warrior.rescue!
      end
      @health = warrior.health
    end
  end
end

