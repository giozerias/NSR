require 'spec_helper'

describe Superhero do
	describe "attributes" do
		let(:superhero) { Superhero.new(name: "spiderman", city: "atl", superpower: "spiderweb", superscore: 0.2) }

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
	  	superhero = Superhero.new
	  	a_number = superhero.roll_the_dice
	  	expect(a_number).to be_between(1,6)
	  end
	end

end
