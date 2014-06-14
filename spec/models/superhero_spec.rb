require 'spec_helper'

describe Superhero do
	context "roll the dice method" do
	  it "returns a number between 1 and 6" do
	  	superhero = Superhero.new
	  	a_number = superhero.roll_the_dice
	  	expect(a_number).to be_between(1,6)
	  end
	end
end
