class Superhero < ActiveRecord::Base
	belongs_to :match
	#to do: change this to has_many relationship

	def roll_the_dice
    dice = [1, 2, 3, 4, 5, 6]
    dice.shuffle.sample
  end

  def total_score(hero=self)
		roll_the_dice * hero.superscore.to_f
  end
end
