require 'spec_helper'

describe Superhero do
	let(:superhero) { Superhero.new(name: "spiderman", city: "atl",
																	superpower: "spiderweb", superscore: 0.2) }
	let(:challenger) { Superhero.new(name: "batman", city: "gothem city",
																	 superpower: "batmobile", superscore: 0.4) }
	describe "attributes" do
		it "has a name" do
			expect(superhero.name).to eq("spiderman")
		end

		it "has a city" do
			expect(superhero.city).to eq("atl")
		end

		it "has a superpower" do
			expect(superhero.superpower).to eq("spiderweb")
		end

		it "has superscore" do
			expect(superhero.superscore).to eq(0.2)
		end
	end

	describe "roll the dice method" do
	  it "returns a number between 1 and 6" do
			a_number = Superhero.roll_the_dice
	  	expect(a_number).to be_between(1,6)
	  end
	end

	describe "total score" do
		it "returns the score for hero" do
			#multiply by 10 because superscore is between .1 and 1
  		#to do: refactor superscore to be an int
			score = Superhero.total_score(challenger)
			expect(score).to be_between(1*(challenger.superscore*10).round, 6*(challenger.superscore*10).round) 
		end
	end

	describe "fight" do
		it "returns the winner" do
			winner = Superhero.fight(superhero, challenger)
			expect([superhero,challenger].include?(winner))
		end
	end
end
