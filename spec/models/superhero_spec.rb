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
	  	a_number = superhero.roll_the_dice
	  	expect(a_number).to be_between(1,6)
	  end
	end

	describe "total score" do
		it "returns the total score" do
			score = superhero.total_score
			expect(score).to be_between(1*superhero.superscore, 6*superhero.superscore)
		end

		it "returns another score for hero provided" do
			score = superhero.total_score(challenger)
			expect(score).to be_between(1*challenger.superscore, 6*challenger.superscore)
		end
	end
end
