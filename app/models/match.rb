class Match < ActiveRecord::Base
	has_many :superheros

	def fight!
		hero_a_superscore = Superhero.find(self[:hero_a_id]).superscore.to_f 
    hero_b_superscore = Superhero.find(self[:hero_b_id]).superscore.to_f

    hero_a_score = roll_the_dice * hero_a_superscore
    hero_b_score = roll_the_dice * hero_b_superscore

    self[:hero_a_score] = hero_a_score
    self[:hero_b_score] = hero_b_score
	end

	def roll_the_dice
    dice = [1, 2, 3, 4, 5, 6]
    dice.shuffle.sample
  end
 
end

