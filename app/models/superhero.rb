class Superhero < ActiveRecord::Base
	belongs_to :match
	#to do: change this to has_many relationship

	def self.roll_the_dice
    dice = [1, 2, 3, 4, 5, 6]
    dice.shuffle.sample
  end

  def self.total_score(hero) 
  	#multiply by 10 because superscore is between .1 and 1
  	#to do: refactor superscore to be an int
		roll_the_dice * (hero.superscore.to_f * 10).round  
  end

  def self.fight(hero_a, hero_b)
  	hero_a_score = total_score(hero_a) 
  	hero_b_score = total_score(hero_b)
  	winner = hero_a
  	if hero_b_score > hero_a_score
  		winner = hero_b
  	elsif hero_b_score == hero_a_score
  		heroes = [hero_b, hero_a]
  		winner = heroes.sample
  	end
  	winner
  end	
end